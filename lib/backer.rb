class Backer
  attr_accessor :backed_projects, :name
  
  def initialize(name, backed_projects = [])
    @name = name
    @backed_projects = backed_projects
  end
  
  def add_project(project)
    @backed_projects << project
  end
  
  def back_project(project)
    add_project(project)
    project.add_backer(self)
  end
  
  
end 