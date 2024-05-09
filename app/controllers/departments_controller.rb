class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show]

  # <%= collection_select(:empleado, :departamento_id, Departamento.all, :id, :nombre_departamento, {:prompt => false}) %>
  def show
  end

  def index
    @departments = Department.all
  end

  private
  def set_department
    @department = Department.find(params[:description])
  end
end
