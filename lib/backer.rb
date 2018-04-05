class Backer
  attr_accessor :name
  attr_reader :backed_projects

  def initialize (name)
    @name = name
    @backed_projects = []
  end

  def back_project (project)
    project.add_backer (self)  # this will also indirectly verify that project is a Project
    add_project(project)
  end

  # defining separate method to avoid potential duplication of projects in the array
  def add_project (project)
      @backed_projects.index(project) || @backed_projects << project
  end
end
