module Constants
  # cli related constants
  CACHE_DIR = File.join(
    ENV.fetch(%(HOME), nil),
    %(.cache),
    %(stitches)
  ).freeze

  # project related constants
  PROJECT_VERSION = %i[version.rb].freeze
  PROJECT_SRC_FOLDERS = %i[
    lib
    pre
    post
    resources
  ].freeze

  # configuration extensions
  EXTENSIONS = %i[
    json
    toml
    yaml
    yml
    nix
    rb
  ].freeze
end
