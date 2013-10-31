class ProjectsController < ApplicationController

	before_filter :authenticate_user!

	def new
		@project = Project.new
	end

	def show
		@project = current_user.projects.find(params[:id])
	end

	def create
		@project = current_user.projects.build(params[:project])

		if @project.save
			redirect_to home_show_url, notice: "Project created successfully"
		else
			render :new
		end
	end
end
