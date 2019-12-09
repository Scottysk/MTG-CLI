class MTG::Cli
  
  def call
    puts "Hello!"
    MTG::API.new.fetch
    
    
    MTG::Cards.all.each do |card|
      puts card.name
     end
     
     
    end
  end