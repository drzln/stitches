require_relative %(./stitches)
require_relative %(../../cli/config)
require_relative %(../../errors/namespace_not_found_error)
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

    cfg_synth = Config.resolve_configurations

    # SNIPPET: example of how to load a config file
    # SNIPPET: for testing
    # cfg_synth = Config.resolve_configurations(
    #   ignore_default_paths: true,
    #   extra_paths: [
    #     %(example/config/sample.rb)
    #   ]
    # )

    if cfg_synth.empty?
      Say.terminal 'configuration empty, exiting...'
      exit
    end

    check_run
    check_target(params[:target], cfg_synth)
    puts params
    puts cfg_synth

    exit
  end

  private

  # targets can be...
  # ${namespace}
  # ${namespace}.${site}
  # ${namespace}.${site}.${project}
  def check_target(target, config)
    raise NamespaceNotFoundError if target.nil?

    targets     = target.split('.').map(&:to_s)
    namespaces  = config[:namespace].keys.map(&:to_s)
    runtype     = nil

    raise NamespaceNotFoundError unless namespaces.include?(targets[0])
  end

  def check_run
    raise IncorrectSubcommandError unless correct_subcommand?(params[:subcommand])
    raise NoInfraTargetError unless params[:target]
  end

  def correct_subcommand?(sbcmd)
    NAME.to_s.eql?(sbcmd.to_s)
  end
end
