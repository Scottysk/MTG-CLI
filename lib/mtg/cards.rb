class MTG::Cards
  
  attr_accessor :name, :manaCost, :rarity, :type, :setName, :text, :artist
  @@all = []
  
  def initialize(args)
    args.each do |k, v|
      self.send("#{k}=", v) if self.respond_to?(k)
      end
      @@all << self
  end
  
  def self.all
    @@all
  end
 end