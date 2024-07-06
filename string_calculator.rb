class StringCalculator
  class << self

    def add numbers
      return 0 if numbers.empty?
      
      if numbers.start_with?('//')
        numbers = numbers.split(/\n/)[1]
      end
      
      numbers = numbers.split(/[,;\n]/).map(&:to_i)

      negative_numbers = numbers.select{|a| a < 0}

      if negative_numbers.count.eql?(0)
        numbers.sum
      else
        raise("Negative numbers not allowed: #{negative_numbers.join(',')}")
      end
    end

  end

end