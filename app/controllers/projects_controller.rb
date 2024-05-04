class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new

  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  private
  def set_project
    @project = Project.find(params[:id])
  end
end
