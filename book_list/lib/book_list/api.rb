class API 
  
  def self.get_books(book)
    url = "https://www.googleapis.com/books/v1/volumes?q="
    response = HTTParty.get(url) 
    #binding.pry 
  end 
end 
