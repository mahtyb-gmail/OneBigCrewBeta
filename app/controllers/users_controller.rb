class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  def index
    session[:return_to] = request.referer
    @users = User.all
  end

  def show
    session[:return_to] = request.referer
    @user = User.find(params[:id])
  end

  def edit
    session[:return_to] = request.referer 
    @user = current_user
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to dashboard_home_path , notice: 'Profile was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
end