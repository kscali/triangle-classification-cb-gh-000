class Triangle
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end   
  
  def kind(triangle)
    if !triangle.valid 
      begin 
        raise TriangleError 
      rescue TriangleError => error 
        puts error.message 
      end   
    end 
  end 
  
  def valid?(triangle)
    a^2 + b^2 = c^2 
  end   
end

  class TriangleError < StandardError 
    "That triangle is illegal."
  end   
  
  
