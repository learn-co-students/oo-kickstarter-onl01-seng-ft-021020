class Project 
  attr_reader :backers, :title
  
  def initialize(project_title)
    @title = project_title
    @backers =[]
  end 
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end 
end 
