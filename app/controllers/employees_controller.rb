class EmployeesController < ApplicationController
  # <%= collection_select(:empleado, :departamento_id, Departamento.all, :id, :nombre_departamento, {:prompt => false}) %>
  def new
    @department = Department.find(params[:department_id])
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)

    if @employee.save
      redirect_to department_employees_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def index
    @employees = Employee.all
  end

  def destroy
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :department_id)
  end
end
