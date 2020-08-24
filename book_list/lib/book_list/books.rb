class Books 
  attr_accessor :title, :author, :description
  
  @@all = []
 
  def initialize(title, author, description) 
    @title = title 
    @author = author 
    @description = description
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def self.clear_all
      @@all.clear
  end 
end  