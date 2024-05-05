class DepartmentsController < ApplicationController
  def index
    @department = Department.all
  end
end
