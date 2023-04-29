require %(stitches/synthesizer/config)
require %(stitches/cli/constants)

module Config
  class << self
    include Constants

    def synthesizer
      @synthesizer ||= ConfigSynthesizer.new
    end

    def xdg_config_home
      ENV.fetch(%(XDG_CONFIG_HOME), %(~/.config))
    end

    # return array of paths that can store a configuration
    def default_paths
      p = {}

      EXTENSIONS.each do |ext|
        p[ext] = [] unless p[ext]
        p[ext] << File.join(%(opt), %(share), %(stitches.#{ext}))
        p[ext] << File.join(%(/etc), %(stitches), %(stitches.#{ext}))
        p[ext].concat(
          Dir.glob(
            File.join(%(/etc/), %(stitches), %(conf.d), %(*.#{ext}))
          )
        )
        p[ext] << File.join(xdg_config_home, %(stitches), %(stitches.#{ext}))
        p[ext].concat(
          Dir.glob(
            File.join(xdg_config_home, %(stitches), %(conf.d), %(*.#{ext}))
          )
        )
      end

      # reorganize so files are read in correctly
      res = []
      (0..EXTENSIONS.length).each do |n|
        EXTENSIONS.each do |ext|
          res << p[ext][n]
        end
      end

      # remove rogue nils from globbing things that may not ext
      res = res.compact
      # remove any file paths that do not exist
      res = res.filter { |path| File.exist?(path) }
    end

    # read file paths and run configuration parsers
    # then appropriately merge configurations
    def resolve_configurations(ignore_default_paths: false, extra_paths: [])
      paths = if ignore_default_paths
                extra_paths
              else
                default_paths.concat(extra_paths)
              end
      paths.each do |path|
        parted  = path.split(%(.))
        ext     = parted[-1]
        _base   = parted[0]

        synthesizer.synthesize(File.read(path), ext)
      end
      synthesizer.synthesis
    end
  end
end
