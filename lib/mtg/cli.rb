class MTG::Cli
  
  def call
    puts "----------------------------------"
    puts "Hello, welcome to the Magic the Gathering card program!"
    puts "----------------------------------"
    menu
  end
  
  def menu
    puts "What card would you like to look for?"
    
    input = gets.strip
    MTG::API.query_cards_db(input)
  end
     
end