class CLI 
  
  def start 
    puts "Welcome to my book app"
    puts "Please choose a genre"
    input = gets.strip
    API.get_books(input)
  end 

end 