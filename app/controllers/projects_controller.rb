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

	def edit
		@project = current_user.projects.find(params[:id])
	end

	def update
		@project = current_user.projects.find(params[:id])

		if @project.update_attributes(params[:project])
			redirect_to @project, notice: "Project updated successfully"
		else
			render :edit
		end
	end 

	def destroy
		@project = current_user.projects.find(params[:id])
		@project.destroy

		redirect_to home_show_path, notice: "Project removed successfully"
	end
end
