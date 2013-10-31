class HomeController < ApplicationController

  before_filter :authenticate_user!

  def index
  end

  def show
	@projects = current_user.projects
  end
end
