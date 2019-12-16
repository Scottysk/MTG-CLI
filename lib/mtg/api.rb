require 'pry'
class MTG::API
  
  BASE_URL = "https://api.magicthegathering.io/v1/cards"
  
  
  def self.query_cards_db(query)
    results = RestClient.get("https://api.magicthegathering.io/v1/#{query}")
    
    json = JSON.parse(results)
    binding.pry
    
  end

  
    
    
end