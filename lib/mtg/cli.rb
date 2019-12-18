class MTG::Cli
  
  def call
    puts "-------------------------------------------------------"
    puts "Hello, welcome to the Magic the Gathering card program!"
    puts "-------------------------------------------------------"
    menu
    list_cards
  end
  
  def menu
    puts "Type 'list' to see an example list of Magic the Gathering cards or type 'exit' to close the program."
    
    input = gets.strip
    
    if input == "list"
      list_cards
      
    else input == "exit"
      puts "Closing the program."
  end
    
    
#    puts "What card would you like to look for?"
#    input = gets.strip
#    MTG::API.query_cards_db(input)
  end
  
  def list_cards
    MTG::API.query_cards_db(query = nil)
    MTG::Cards.all.each.with_index(1) do |c, i|
      puts "#{i}. #{c.name}."
  end
end

     
end