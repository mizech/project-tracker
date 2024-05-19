class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
    @projects = @memberships.map do |membership|
      project = Project.find(membership.project_id)
      employees = Employee.find(membership.employee_id)
      [project, employees]
    end
    puts @projects
  end

  def new
    @membership = Membership.new
  end

  def create
    @membership = Membership.create(membership_params)

    if @membership.save
      redirect_to memberships_path
    else
      render :new
    end
  end

  def membership_params
    params.require(:membership)
      .permit(:project_id, :employee_id)
  end
end
