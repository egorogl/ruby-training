# frozen_string_literal: true

class Bottles
  def verse(cnt)
    return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n" if cnt.zero?

    "#{cnt} #{word(cnt)} of beer on the wall, #{cnt} #{word(cnt)} of beer.\nTake #{one(cnt)} down and pass it around, #{down(cnt - 1)} #{word(cnt - 1)} of beer on the wall.\n"
  end

  def verses(from, to)
    ret = []

    from.downto(to) { |x| ret << verse(x) }

    ret.join("\n") + "\n"
  end

  def sing
    verses(99, 0)
  end

  def down(cnt)
    return 'no more' if cnt.zero?

    cnt
  end

  def word(cnt)
    return 'bottle' if cnt == 1

    'bottles'
  end

  def one(cnt)
    return 'it' if cnt == 1

    'one'
  end
end
