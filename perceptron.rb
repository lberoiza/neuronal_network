

class Perceptron


	attr_accessor :input_number, :w, :step_size

 	def initialize(input_number,step_size=0.1)
	
		self.input_number = input_number # Número de parámetros de entrada
    
    	# Seleccionamos pesos aleatorios
    	milliseconds = (Time.now.to_f-Time.now.to_i)*1000 
	    self.w = Random.new(milliseconds).rand(100)
	    self.step_size = step_size # La tasa de convergencia

	end

end