require 'pry'
class MTG::API
  
  BASE_URL = "https://api.magicthegathering.io/v1/cards"
  
  
  def self.query_cards_db(query)
    results = RestClient.get("https://api.magicthegathering.io/v1/cards")
    
    json = JSON.parse(results)
    binding.pry
    json["cards"].each do |card_hash|
      MTG::Cards.new(card_hash)
    end

  end

  
    
    
end