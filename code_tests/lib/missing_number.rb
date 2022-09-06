# frozen_string_literal: true

class MissingNumber
  def detect(arr)
    return 1 if arr.empty?
    return arr.first.succ if arr.size == 1

    to = arr.max
    l = ((1..to).to_a - arr.sort).first
    l.nil? ? arr.max.succ : l
  end
end
