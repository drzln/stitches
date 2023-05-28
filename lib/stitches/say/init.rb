require %(tty-box)

module Say
  class << self
    def terminal(msg)
      box = TTY::Box.frame(
        width: msg.length + 4,
        align: :center,
        border: :thick,
        padding: 0,
        height: 1,
        style: {
          fg: :green,
          bg: :blue
        }
      )
      puts box + "\n"
      puts "  #{msg}  "
      puts "\n" + box
    end
  end
end
