class CLI 
  
  attr_accessor :api, :book, :author 
  
  def call 
    start
  end 
  
  def start 
    puts "Welcome!"
    sleep(1)
    puts "Please choose a subject!"
    input = gets.strip.downcase
    @api = API.get_books(input)
    display_books 
  end 
  
  def display_books
    Books.all.each.with_index(1) do | b, i | 
    puts "#{i}. #{b.title}"
    end
    get_info 
  end 
    
  def get_info 
    puts "Please pick a number."
    input = gets.strip
    @api= API.get_books(input)
    number_picked
 end 
  
  def number_picked
    Books.each do | b, i | 
    puts "#{i}. #{b.author} #{b.description}"
   end
  end
 
 end  
 
  #gets. string is a string turn the string into an integer.
  #look thru all books and get index number subtract by 1 
  #Books.all(2.i-1) b.author b.description to show off info 
  