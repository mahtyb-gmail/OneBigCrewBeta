class DashboardController < ApplicationController
  def home
    @projects = current_user.projects.order("created_at desc")
  end

  def search
  end
end
