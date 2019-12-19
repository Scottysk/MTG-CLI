require 'pry'
class MTG::API
  
  BASE_URL = "https://api.magicthegathering.io/v1/cards"
  
  
  def self.query_cards_db(query)
    
    results = RestClient.get("https://api.magicthegathering.io/v1/cards")
    
    
    json = JSON.parse(results)
    json["cards"].each do |card_hash|
      MTG::Cards.new(card_hash)
      
    end
  end
  
  def self.single_card(cards)
    
    results = RestClient.get("#{BASE_URL}?name=#{:id}")
    
    
    json = JSON.parse(results)
    cards.updated_cards(json)
      

  end

  
    
    
end