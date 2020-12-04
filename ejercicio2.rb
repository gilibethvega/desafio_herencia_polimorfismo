module Habilidades

  module Volador
    def volar
      'Estoy volandooooo!'
    end
    def aterrizar
      'Estoy cansado de volar, voy a aterrizar'
    end
  end

  module Nadador
    def nadar
      'Estoy nadando!'
    end
    def sumergir
      'glu glub glub glu'
    end
  end

  module Caminante
    def caminar
      'Puedo caminar!'
    end
  end
end

module Alimentacion

  module Herbivoro
    def comer
      'Puedo comer plantas!'
    end
  end

  module Carnivoro
    def comer
      'Puedo comer carne!'
    end
  end
end

class Animal
  attr_reader nombre
  def initialize
    @nombre = nombre
  end
end

class Ave < Animal
  include Habilidades
  include Alimentacion
end

class Pinguino < Ave
  include Caminante
  include Nadador
  include Carnivoro
end

class Paloma < Ave
  include Volador
  include Herbivoro
end

class Pato < Ave
  include Caminante
  include Nadador
  include Herbivoro
end

class Mamifero < Animal
  include Habilidades
  include Alimentacion
end

class Perro < Mamifero
  include Caminante
  include Carnivoro
end

class Gato < Mamifero
  include Caminante
  include Carnivoro
end

class Vaca < Mamifero
  include Caminante
  include Herbivoro
end

class Insecto < Animal
  include Habilidades
  include Alimentacion
end

class Mosca < Insecto
  include Volador
  include Carnivoro
end

class Mariposa < Insecto
  include Volador
  include Herbivoro
end

class Abeja < Insecto
  include Volador
  include Herbivoro
end

puts vaca_blue = Vaca.new("Blue")
puts vaca_blue.caminar
puts vaca_blue.comer
