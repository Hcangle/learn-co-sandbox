class Book
  attr_accessor :title, :author, :description, :id
 
  @@search_results = {}
 
  def initialize(title, author, description, id, query) 
    @title = title 
    @author = author || ["No author"]
    @description = description || "No description"
    @id = id
    if @@search_results[query]
      @@search_results[query] << self
    else
      @@search_results[query] = [self]
    end

  end 
  
  def self.search_results 
    @@search_results
  end
  
  

end  
