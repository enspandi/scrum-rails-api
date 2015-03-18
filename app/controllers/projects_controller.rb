class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @projects, include: ['scrum_master', 'product_owner']
  end

  def show
    @project = Project.find(params[:id])
    render json: @project, include: ['scrum_master', 'product_owner', 'sprints']
  end
end
