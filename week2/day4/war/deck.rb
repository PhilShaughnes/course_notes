class Deck

  attr_accessor :cards

  def initialize
    fill_cards
    shuffle
  end

  def fill_cards
    self.cards = []
    Card.suits.each do |suit|
      Card.faces.each do |face|
        cards << Card.new(face, suit)
      end
    end
  end

  def shuffle
    cards.shuffle!
  end

  def refill(new_cards)
    self.cards += new_cards
    shuffle
  end

  def empty?
    cards.empty?
  end

  def deal(num=1)
    hand = cards.shift(num)
    num == 1 ? hand.first : hand
  end

end
