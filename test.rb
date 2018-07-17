require File.join(File.dirname(__FILE__), 'perceptron')


# Agregando los datos de aprendizaje
#  Datos de hombres y mujeres
input_data = [[1.7,56,1], # Mujer de 1.70m y 56kg
              [1.72,63,0],# Hombre de 1.72m y 63kg
              [1.6,50,1], # Mujer de 1.60m y 50kg
              [1.7,63,0], # Hombre de 1.70m y 63kg
              [1.74,66,0],# Hombre de 1.74m y 66kg
              [1.58,55,1],# Mujer de 1.58m y 55kg
              [1.83,80,0],# Hombre de 1.83m y 80kg
              [1.82,70,0],# Hombre de 1.82m y 70kg
              [1.65,54,1]]# Mujer de 1.65m y 54kg


pr = Perceptron.new(3) # Perceptron con 3 entradas


# Comenzando el entrenamiento
1.times do |variable|

  # La idea del entrenamiento es que los 'pesos' converjan
  input_data.each do |persona|
  	output = persona[-1]
  	inp = [1] + persona[0..-1] # Agregamos 1 por default
  	err = pr.training(inp,output)
  end
  
end


h = 1,9
w = 85

pr.predict([1,h,w]) == 1 ? (puts "Mujer") : (puts "Hombre")