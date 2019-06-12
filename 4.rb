class Dog
 attr_reader :nombre
 def initialize(propiedades = {})
    @nombre = propiedades[:nombre]
 end
 def ladrar
 	puts "#{self.nombre} está ladrando!"
 end
end

dog = Dog.new(propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'})
print dog.ladrar