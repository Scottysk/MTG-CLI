class MTG::Cards
  
  attr_accessor :name, :manaCost, :rarity, :type, :types, :colorIdentity, :setName, :text, :artist, :number, :multiverseid, :flavor
  @@all = []
  
  def initialize(args)
      update_card(args)
      @@all << self
  end
  
  def update_card(args)
    args.each do |k, v|
      self.send("#{k}=", v) if self.respond_to?(k)
     end
   end
  
  def self.all
    @@all
  end
 end