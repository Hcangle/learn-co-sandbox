class API 
  
  def self.get_books(subject)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{subject}"
    response = HTTParty.get(url) 
    response["items"].each do |info| 
    title = info["volumeInfo"]["title"]
    author = info["volumeInfo"]["authors"]
    description = info["volumeInfo"]["description"]
    Books.new(title, author, description)
   end 
  end 
end 



