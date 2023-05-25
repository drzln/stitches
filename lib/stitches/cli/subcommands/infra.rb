require_relative %(./stitches)
require_relative %(../../errors/no_infra_target_error)
require_relative %(../../errors/incorrect_subcommand_error)

class InfraCommand < StitchesCommand
  @name = :infra

  usage do
    desc %(manage infrastructure)
    program %(stitches)
    command %(infra)
  end

  argument :subcommand do
    desc %(the subcommand)
  end

  argument :target do
    desc %(target like namespace.site.project)
  end

  def run(argv)
    parse(argv)

    puts params
    puts params.keys

    raise IncorrectSubcommandError unless correct_subcommand?(params[:subcommand])
    raise NoInfraTargetError unless params[:target]

    print help
    exit
  end

  private

  def correct_subcommand?(sbcmd)
    @name.to_s.eql?(sbcmd.to_s)
  end
end
