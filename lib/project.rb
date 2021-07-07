class Project
  attr_accessor :backers, :title
  
  def initialize(title, backers = [])
    @title = title
    @backers = backers
  end 
  
  def add_backer(backer)
    @backer = backer 
    @backers << backer
    @backer.add_project(self)
  end
  
end 