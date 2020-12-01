class API 
  

  def self.get_books(subject)
    if !Book.search_results[subject]
    url = "https://www.googleapis.com/books/v1/volumes?q=#{subject}"
    response = HTTParty.get(url) 
    response["items"].each do |info| 
    id = info["id"]
    title = info["volumeInfo"]["title"]
    author = info["volumeInfo"]["authors"]
    description = info["volumeInfo"]["description"]
    Book.new(title, author, description, id, subject)
   end 
 end
  end 

end 


