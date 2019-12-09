class MTG::Cli
  
  def call
    puts "Hello!"
    MTG::API.new.fetch
  end
  
    
  end