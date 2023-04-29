require_relative %(./stitches)

class InfraCommand < StitchesCommand
  usage do
    desc %(manage infrastructure)
    program %(stitches)
    command %(infra)
  end

  def run(argv)
    parse(argv)
    print help
    exit
  end
end
