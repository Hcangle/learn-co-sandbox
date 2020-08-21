class API 
  
  def self.get_books(book)
    #make sure to add a begin rescue incase of errors or nil returns
    key = "BPpJJ9TuVLBucWg9oxqw"
    #url should have genre and api key 53 min into vid
    url = "https://www.goodreads.com/search.xml?key=#{key}=Ender%27s+Game"
    response = HTTP.Party.get(url) #error here 56 min on vid 
    #binding.pry 
  end 
end 
