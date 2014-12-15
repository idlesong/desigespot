class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authorize

  helper_method :current_user

  protected

    def authorize
      unless Designer.find_by_id(session[:designer_id])
        redirect_to login_url, notice: "Please log in"
      end

      @current_designer = Designer.find_by_id(session[:designer_id])
    end

    def current_user
      @current_user ||= Designer.find(session[:designer_id]) if session[:designer_id]
    end

  protect_from_forgery with: :exception
end
