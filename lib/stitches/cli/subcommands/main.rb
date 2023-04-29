require_relative %(./stitches)
require_relative %(./infra)
require_relative %(./config)
require_relative %(../version)

class Command < StitchesCommand
  usage do
    desc %(stitch together infrastructure)
    program %(stitches)
  end

  argument :subcommand do
    desc %(subcommand for stitches)
    required
  end

  def run
    argv = ARGV
    parse(argv)

    case params[:subcommand].to_s
    when %(infra)
      InfraCommand.new.run(argv)
    when %(config)
      ConfigCommand.new.run(argv)
    else
      if params[:version]
        puts Stitches::Cli::VERSION
      else
        puts help
      end
      exit
    end
  end
end
