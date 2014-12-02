class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
  end

  def create
    designer = Designer.find_by_name(params[:name])
    if designer and designer.authenticate(params[:password])
      session[:designer_id] = designer.id
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
