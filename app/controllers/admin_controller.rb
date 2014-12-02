class AdminController < ApplicationController
  def index
    @designer = Designer.find(session[:designer_id])
  end
end
