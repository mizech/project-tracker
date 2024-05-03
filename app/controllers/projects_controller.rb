class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
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
  end

  private
end
