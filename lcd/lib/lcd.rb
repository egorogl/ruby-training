class LCD
  ALPHA = {
    a: [' _ ', '|_|', '| |'],
    b: ['   ', '|_ ', '|_|'],
    c: [' _ ', '|  ', '|_ '],
    d: ['   ', ' _|', '|_|'],
    e: [' _ ', '|_ ', '|_ '],
    f: [' _ ', '|_ ', '|  '],
    '0': [' _ ', '| |', '|_|'],
    '1': ['   ', '  |', '  |'],
    '2': [' _ ', ' _|', '|_ '],
    '3': [' _ ', ' _|', ' _|'],
    '4': ['   ', '|_|', '  |'],
    '5': [' _ ', '|_ ', ' _|'],
    '6': [' _ ', '|_ ', '|_|'],
    '7': [' _ ', '  |', '  |'],
    '8': [' _ ', '|_|', '|_|'],
    '9': [' _ ', '|_|', ' _|']
  }

  def initialize(str, options = {})
    @str = str.to_s
    @width = options[:width] || 1
    @height = options[:height] || 1
  end

  def render
    ret = ''
    
    3.times do |x|
      @str.each_char do |ch|
        s = ALPHA[ch.to_sym][x]
        ret += s[0] + (s[1] * @width) + s[2]
      end
      ret += "\n"
    end
    ret
  end
end
