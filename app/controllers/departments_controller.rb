class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update]

  # <%= collection_select(:empleado, :departamento_id, Departamento.all, :id, :nombre_departamento, {:prompt => false}) %>
  def show
  end

  def edit
  end

  def update
    if @department.update(department_params)
      redirect_to department_path(@department)
    else
      render :edit
    end
  end

  def index
    @departments = Department.all
  end

  private
  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name, :description)
  end
end
