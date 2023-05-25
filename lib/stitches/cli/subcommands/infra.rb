require_relative %(./stitches)

class InfraCommand < StitchesCommand
  usage do
    desc %(manage infrastructure)
    program %(stitches)
    command %(infra)
  end

  argument :target do
    desc %(target like namespace.site.project)
  end

  def run(argv)
    parse(argv)

    raise NoInfraTargetError unless params[:target]

    print help
    exit
  end
end
