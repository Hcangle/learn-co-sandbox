class CLI 
  
  attr_accessor :api, :book, :author 
  
  def call 
    start
  end 
  
  def start 
    puts "Welcome!"
    sleep(1)
    puts "Please choose a subject!"
    input = gets.strip
    @api = API.new 
  end 

end 