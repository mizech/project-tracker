class DepartmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  # <%= collection_select(:empleado, :departamento_id, Departamento.all, :id, :nombre_departamento, {:prompt => false}) %>
  def new
    @department = Department.new
  end

  def create
    @department = Department.create(department_params)

    respond_to do |format|
      if @department.save
        format.turbo_stream
        format.html { redirect_to note_url(@department),
          notice: "Department was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @department.update(department_params)
      redirect_to department_path(@department), notice: "Department updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
    @departments = Department.all
  end

  def destroy
    @department.destroy
    redirect_to departments_path, notice: "Department has become removed"
  end

  private
  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name, :description)
  end
end
