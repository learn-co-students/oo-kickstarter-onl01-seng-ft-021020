require 'pry'
class Project
  
  attr_accessor :backed_projects
  attr_reader :title, :backers
  
  @@all = []
  
    def initialize(title)
      @title = title
      @backers = []
      save
    end 
    
    def self.all
      @@all
    end
    
    def save
      @@all << self
      
    end
    
    def add_backer(backer)
      @backers << backer
      backer.backed_projects << self
    end
    
    
  end  