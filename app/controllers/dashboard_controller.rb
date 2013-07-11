class DashboardController < ApplicationController
  def welcome
  end
  def home
    @projects = current_user.projects.order("created_at desc")
    @profile = current_user
  end

  def search_projects
    current_user.skills.each do |x|
      @projects = Project.joins(:skills).where('skills.id' => x)
    end
  end
  
  def search_users
      project = current_user.projects.first
        project.skills.each do |x|
          @users = User.joins(:skills).where('skills.id' => x)
        end
  end
end
