class MTG::Cli
  
  def call
    puts "-------------------------------------------------------"
    puts "Hello, welcome to the Magic the Gathering card program!"
    puts "-------------------------------------------------------"
    puts ""
    menu
  end
  
  def menu
    puts "Type 'list' to see a list of Magic the Gathering cards or type 'exit' to close the program."
    
    input = gets.strip
    
    if input.include? "list"
      
      puts "Retrieving cards..."
      
      if MTG::Cards.all.empty?
        MTG::API.query_cards_db(input)
      end
      
      
      MTG::Cards.all.each.with_index(1) do |c, i|
        puts "#{i}. #{c.name}."
      end
      
      puts "Which card would you like more information on?"
      
      card_info

    else input.include? "exit"
      goodbye
    end
  end
  
  def card_info
    input = gets.strip
    
    if !input.to_i.between?(1, MTG::Cards.all.size)
      puts "That won't work, try a number."
      card_info

     else
    
      card = MTG::Cards.all[input.to_i - 1]
      
      
      puts "Card Name: #{card.name}"
      puts "Mana Cost: #{card.manaCost}"
      puts "Rarity: #{card.rarity}"
      puts "Type: #{card.type}"
      puts "Types: #{card.types}"
      puts "Color Identity: #{card.colorIdentity}"
      puts "Set Name: #{card.setName}"
      puts "Artist: #{card.artist}"
      puts "Number: #{card.number}"
      puts "Multiverse ID: #{card.multiverseid}"
      puts "Card Artist: #{card.artist}"
      puts "Card Text: #{card.text}"
      puts "Flavor Text: #{card.flavor}"
      puts ""
      menu
    end
    
  end
  
  def goodbye
    puts ""
    puts "See you next time!"
    sleep 1
  end
end