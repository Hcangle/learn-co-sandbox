class CLI 
  
  def start 
    puts "Welcome to my book app"
    puts "Please choose a book"
    input = gets.strip
    API.get_books(input)
  end 

end 