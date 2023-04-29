require_relative %(./stitches)

class ConfigCommand < StitchesCommand
  usage do
    desc %(manage configuration)
    program %(stitches)
    command %(config)
  end

  def run(argv)
    parse(argv)
    print help
  end
end
