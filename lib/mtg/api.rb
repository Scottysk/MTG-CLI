require 'pry'

class MTG::API
  def fetch
    url = "https://api.magicthegathering.io/v1/cards"
    response = HTTParty.get(url)
    response["cards"].each do |card|
      name = card["name"]
      manaCost = card["manaCost"]
      rarity = card["rarity"]
      type = card["type"]
      setName = card["setName"]
      text = card["text"]
      artist = card["artist"]
      Card.new(name, manaCost, rarity, type, setName, text, artist)
      binding.pry
    end
    end
    
    
  end