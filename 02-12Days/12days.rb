class Xmas
  GIFTS = [
    "a partridge in a pear tree",
    "two turtle doves",
    "three french hens",
    "four calling birds",
    "FIVE GOLDEN RINGS",
    "six geese-a-laying",
    "seven swans-a-swimming",
    "eight maids-a-milking",
    "nine ladies dancing",
    "ten lords-a-leaping",
    "eleven pipers piping",
    "twelve drummers drumming"
  ]

  ORDINALS = [
    "first", "second", "third", "fourth", "fifth", "sixth",
    "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"
  ]

  def self.gifts(day)
    # what do I do with day? I'm talking in circles. :/
    todays_gifts = GIFTS.first(day + 1)

    # when there's more than one gift, the day-one gift begins with "and"
    if todays_gifts.length > 1
      todays_gifts[0] = "and " + todays_gifts[0]
    end

    todays_gifts.reverse
  end

  def self.verse(day)
    # the first line in the verse is the "on the first day..."
    first_line = "On the #{ ORDINALS[day] } day of Christmas my true love gave to me\n"

    # then there's a array of gifts, and it looks like the test wants one per line
    gifts = self.gifts(day).join("\n")

    # return the verse--the first line and the gifts
    first_line + gifts
  end

  def self.sing
    verses = []
    ORDINALS.length.times do |day|
      todays_verse = self.verse(day)
      verses << todays_verse
    end

    verses.join("\n\n")
  end
end

















