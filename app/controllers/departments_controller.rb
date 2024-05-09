class DepartmentsController < ApplicationController
  # <%= collection_select(:empleado, :departamento_id, Departamento.all, :id, :nombre_departamento, {:prompt => false}) %>
  def show
    @department = Department.find(params[:id])
  end

  def index
    @departments = Department.all
  end
end
