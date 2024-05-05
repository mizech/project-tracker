class DepartmentsController < ApplicationController
  # <%= collection_select(:empleado, :departamento_id, Departamento.all, :id, :nombre_departamento, {:prompt => false}) %>
  def index
    @department = Department.all
  end
end
