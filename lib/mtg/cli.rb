class MTG::Cli
  
  def call
    puts "----------------------------------"
    puts "Hello, welcome to the Magic the Gathering card program!"
    puts "----------------------------------"
    menu
    list_cards
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Press '1' to see a list 100 Magic the Gathering cards or type exit to close the program."
    input = gets.strip
    if input.to_i > 0
      puts @cards[input.to_i-1]
    else
      puts "Closing the program."
    end
  end
    
    
#    puts "What card would you like to look for?"
#    input = gets.strip
#    MTG::API.query_cards_db(input)
  end
  
  def list_cards
    @cards = MTG::Cards.all.each.with_index(1) do |m, i|
      puts "#{i}. #{m.name}."
  end
end
     
end