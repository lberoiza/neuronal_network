
class Perceptron


  attr_accessor :input_number, :w, :step_size

  # Constructor de la clase
  def initialize(input_number,step_size=0.1)

    self.input_number = input_number # Número de parámetros de entrada
  
    # Seleccionamos pesos aleatorios
    self.w = []

    # inicializando array con los pesos de forma aleatoria
    1.upto(input_number) do
      milliseconds = (Time.now.to_f-Time.now.to_i)*1000     
      self.w << Random.new(milliseconds).rand(100) 
    end

    self.step_size = step_size # La tasa de convergencia

  end


  # Calcula los pesos de cada una de las entradas a un perceptron
  def predict(inputs)
    # Producto punto de entrada y pesos
    weighted_average = 0

    # genera un array con subarray formados por los elementos
    # entre los pesos y las entradas
    self.w.zip(inputs).each do |pair|
      # calcula el producto peso y entrada y lo almacena en 'weighted_average'
      weighted_average += pair.reduce(:*)
    end

    # Si el valor del peso combinado es mayor que cero retorna un 1, 0 en caso contrario
    weighted_average > 0 ? 1 : 0
  end


end