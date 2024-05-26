class EmployeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee, only: [:show, :destroy, :edit, :update]

  def new
    @department = Department.find(params[:department_id])
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)

    if @employee.save
      redirect_to department_path(Department.find(params[:department_id]))
    else
      redirect_to departments_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      redirect_to department_employee_path([@department, @employee])
    else
      render :edit
    end
  end

  def index
    @employees = Employee.all
  end

  def destroy
    @employee.destroy
    redirect_to department_path(@department)
  end

  private
  def set_employee
    @department = Department.find(params[:department_id])
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee)
      .permit(:first_name, :last_name, :email, :department_id)
  end
end
