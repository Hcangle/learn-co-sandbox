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
    pick_a_number 
  end 
    
  def pick_a_number 
    puts "Please pick a number between 1 and 10."
    input = gets.strip.to_i
    show_all_info(input) if number_picked(input.to_i, Books.all)
 end
  
  def number_picked(input, data)
    if input <= data.length && input > 0 
      true
    else 
     puts "Invalid number."
     sleep(1)
     display_books
     
    end 
  end

  def show_all_info(input)
    b = Books.all[input - 1]
    puts "Title: #{b.title}"
    puts "Author: #{b.author.join(" ")}"
    puts "Description: #{b.description}"
    #show_all_info(input) if number_picked(input, Books)
    menu_return
  end
  
    
    def menu_return
     puts "What would you like to do next?"
     3puts "1. Go back to the Book Selection."
     puts "2. Go back to the Subject Selection."
     puts "3. Leave"
     puts ""
     puts "Please select by number"
    return_input = gets.strip.to_i 
     if return_input == 1 
      display_books
    elsif return_input == 2 
      Books.clear_all
      start
     elsif return_input == 3 
      exit_method
    else 
      puts "Please give a valid selecton."
      menu_return
    end 
  end 
    
    def exit_method
      puts "Thank for for your visiting!"
      exit
    end 
    
  
end
 
  #google to_i 
  #gets.strip is a string turn the string into an integer.
  #look thru all books and get index number subtract by 1 
  #Books.all(2.i-1) b.author b.description to show off info