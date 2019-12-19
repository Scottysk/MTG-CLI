class MTG::Cards
  
  attr_accessor :name, :manaCost, :rarity, :type, :types, :colorIdentity, :setName, :text, :artist, :number, :multiverseid
  @@all = []
  
  def initialize(args)
      updated_cards(args)
      @@all << self
  end
  
  def updated_cards(args)
    args.each do |k, v|
      self.send("#{k}=", v) if self.respond_to?(k)
     end
   end
  
  def self.all
    @@all
  end
 end