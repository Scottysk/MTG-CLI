class MTG::Cli
  
  def call
    puts "-------------------------------------------------------"
    puts "Hello, welcome to the Magic the Gathering card program!"
    puts "-------------------------------------------------------"
    menu
  end
  
  def menu
    puts "Type 'list' to see an example list of Magic the Gathering cards or type 'exit' to close the program."
    
    input = gets.strip
    
    if input == "list"
      
    MTG::API.query_cards_db(input)
    MTG::Cards.all.each.with_index(1) do |c, i|
      puts "#{i}. #{c.name}."
    end
    
    
    else input == "exit"
      puts "Closing program."
    end
  end
  


     
end