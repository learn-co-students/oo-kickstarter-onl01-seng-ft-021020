class Project
  
  attr_accessor :title 
  attr_reader :backers
  
  def initialize(name)
    @title = name
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer 
    # if(!backer.backed_projects.include?(self))
    #   backer.back_project(self)
    # end
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
  
end