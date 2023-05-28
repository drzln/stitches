require %(tty-box)

module Say
  class << self
    def terminal(msg)
      box = TTY::Box.frame width: msg.length + 4,
                           align: :center,
                           border: :thick,
                           padding: 1,
                           height: 5,
                           style: {
                             fg: :black,
                             bg: :white
                           }
      puts box + "\n"
      puts "  #{msg}  "
      puts "\n" + box
    end
  end
end
