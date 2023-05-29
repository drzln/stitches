require_relative %(./stitches)
require_relative %(../../cli/config)
require_relative %(../../errors/namespace_not_found_error)
require_relative %(../../errors/site_not_found_error)
require_relative %(../../errors/project_not_found_error)
require_relative %(../../errors/no_infra_target_error)
require_relative %(../../errors/incorrect_subcommand_error)
require_relative %(../../say/init)

class InfraCommand < StitchesCommand
  NAME = :infra

  usage do
    desc %(manage infrastructure)
    program %(stitches)
    command %(infra)
  end

  argument :subcommand do
    desc %(the subcommand)
  end

  argument :target do
    desc %(target like ${namespace}.${site}.${project})
  end

  def run(argv)
    parse(argv)

    # grab a config synth
    cfg_synth = Config.resolve_configurations

    # reject empty configurations
    if cfg_synth.empty?
      Say.terminal %(configuration empty, exiting...)
      exit
    end

    # preflight checks for the command execution
    check_run
    check_target(params[:target], cfg_synth)

    puts params.to_s
    puts cfg_synth.to_s

    exit
  end

  private

  # targets can be...
  # ${namespace}
  # ${namespace}.${site}
  # ${namespace}.${site}.${project}
  def check_target(target, config)
    raise NamespaceNotFoundError if target.nil?

    targets       = target.split('.').map(&:to_sym)
    namespaces    = config[:namespace].keys.map(&:to_sym)
    runtype       = nil
    environments  = []

    namespaces.each do |ns_name|
      environments.concat(config[:namespace][ns_name].keys.map(&:to_sym))
    end

    raise NamespaceNotFoundError unless namespaces.include?(targets[0])

    namespaces.each do |ns_name|
      environments.each do |e_name|
        sites = config[:namespace][ns_name][e_name][:sites] || []

        next if sites.empty?

        site_names = []
        sites.each do |site|
          site_names << site[:name]
        end

        raise SiteNotFoundError unless site_names.include?(targets[1].to_sym)

        projects = config[:namespace][ns_name][e_name][:projects] || []

        next if projects.empty?

        project_names = []
        projects.each do |project|
          project_names << project[:name]
        end

        raise ProjectNotFoundError unless project_names.include?(targets[2].to_sym)
      end
    end
  end

  def check_run
    raise IncorrectSubcommandError unless correct_subcommand?(params[:subcommand])
    raise NoInfraTargetError unless params[:target]
  end

  def correct_subcommand?(sbcmd)
    NAME.to_s.eql?(sbcmd.to_s)
  end
end
