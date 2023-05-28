require %(tty-color)
require %(tty-box)

module Say
  class << self
    def terminal(msg)
      spec = {
        width: msg.length + 4,
        style: {
          fg: :yellow,
          bg: :blue,
          border: { fg: :green, bg: :black }
        },
        align: :right,
        border: :thick
        # padding: 0,
        # height: 1
      }

      box = TTY::Box.frame(**spec)

      puts box + "\n"
      puts "  #{msg}  "
      puts "\n" + box
    end
  end
end
