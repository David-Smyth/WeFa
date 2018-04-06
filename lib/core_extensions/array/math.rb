module CoreExtensions
  module Array
    module Math
      def multiply
        result = 1
        each do |e|
          result *= e if e.is_a? Numeric
        end
        result
      end
    end
  end
end

class Array
  include CoreExtensions::Array::Math
end
