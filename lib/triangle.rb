require "pry"
class Triangle
  # write code here
    attr_accessor :side1, :side2, :side3, :sides
  
    def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
      # binding.pry
      self.sides = [side1, side2, side3]
    end

    def kind
      if @sides[0] > 0 && @sides[1] > 0 && @sides[2] > 0
        if @sides[0] + @sides[1] > @sides[2] && @sides[2] + @sides[1] > @sides[0] && @sides[0] + @sides[2] > @sides[1]
          if @side1 == @side2 && @side1 == @side3
            :equilateral
          elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
            :isosceles
          elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
            :scalene
          end
        else
          raise TriangleError
        end
      else
        raise TriangleError
      end
    end

    class TriangleError < StandardError
      #TriangleError code
    end
end
