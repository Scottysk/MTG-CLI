class MTG::Cards
  
  attr_accessor :name, :manaCost, :rarity, :type, :setName, :text, :artist
  @@all = []
  
  def initialize(name, manaCost, rarity, type, setName, text, artist)
    @name = name 
    @manaCost = manaCost
    @rarity = rarity
    @type = type
    @setName = setName
    @text = text
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
end