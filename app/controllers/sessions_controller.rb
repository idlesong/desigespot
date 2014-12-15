class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
  end

  def create
    login_user = Designer.find_by_name(params[:name])
    if login_user and login_user.authenticate(params[:password])
      session[:designer_id] = login_user.id
      session[:designer_name] = login_user.name
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:designer_id] = nil
    redirect_to admin_url, notice: "Logged out"
  end
end
