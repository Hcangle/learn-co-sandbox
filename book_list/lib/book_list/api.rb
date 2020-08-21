class API 
  
  def self.get_books(genres)
    #make sure to add a begin rescue incase of errors or nil returns
    key = "API key"
    url = "url should have genre and api key 53 min into vid"
    response = HTTP.Party.get(url) #error here 56 min on vid 
    binding.pry 
  end 
end 
