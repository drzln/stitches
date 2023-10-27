# String
# Integer
def diz_coisas(mensagem="eu sou numero" , vezes=15)
  #####################################
  # verifique as coisas
  #####################################

  # defende contra muitas vezes
  if vezes > 100
    puts "nao posso fazer tantas vezes, vezes tentadas: #{vezes}"
    exit 1
  end

  # defende contra palavrao
  %w[porra caralho merda bosta].each do |palavrao|
    if mensagem.include? palavrao
      puts "nao pode falar #{palavrao}"
      exit 1
    end
  end

  #####################################
  # minha logica central
  #####################################

  1..vezes.times do |i|
    puts "#{mensagem} #{i}"
  end
end

def diz_um_bucado_de_coisa
  diz_coisas "ola, vai pra bosta", 99
end

diz_um_bucado_de_coisa
