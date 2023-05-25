require_relative %(./stitches)
require_relative %(../config)
require_relative %(../../errors/no_infra_target_error)
require_relative %(../../errors/incorrect_subcommand_error)

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

    puts '# args'
    puts argv
    puts '# end args'

    check_run

    # print help
    exit
  end

  private

  # represent the app_config to the local structure
  def app_config
    nil
  end

  def check_run
    raise IncorrectSubcommandError unless correct_subcommand?(params[:subcommand])
    raise NoInfraTargetError unless params[:target]
  end

  def correct_subcommand?(sbcmd)
    NAME.to_s.eql?(sbcmd.to_s)
  end
end
