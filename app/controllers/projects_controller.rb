class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:show, :destroy, :edit, :update]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "Project created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
    redirect_to root_path, notice: "Project has become removed"
  end

  private
  def project_params
    params.require(:project).permit(:title, :description)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
