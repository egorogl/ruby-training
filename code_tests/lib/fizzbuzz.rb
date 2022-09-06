# frozen_string_literal: true

class Fizzbuzz
  def play(num)
    arr = []
    (1..num).each do |x|
      arr << if (x % 3).zero? && (x % 5).zero? then 'fizzbuzz'
             elsif (x % 3).zero? then 'fizz'
             elsif (x % 5).zero? then 'buzz'
             else x
             end
    end
    arr
  end
end
