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
      
    puts "Retrieving cards..."
    
    MTG::API.query_cards_db(input)
    MTG::Cards.all.each.with_index(1) do |c, i|
      puts "#{i}. #{c.name}."
    end
    
    puts "Which card would you like to search for?"
    input = gets.strip
    
    card = MTG::Cards.all[input.to_i - 1]
    MTG::API.single_card(card)
    
    puts "Name: #{card.name}"
    puts "Mana Cost: #{card.manaCost}"
    puts "Rarity: #{card.rarity}"
    puts "Type: #{card.type}"
    puts "Types: #{card.types}"
    puts "Color Identity: #{card.colorIdentity}"
    puts "Set Name: #{card.setName}"
    puts "Artist: #{card.artist}"
    puts "Number: #{card.number}"
    puts "Multiverse ID: #{card.multiverseid}"

    
    
    
    else input == "exit"
      puts "Closing program."
    end
  end
  


     
end