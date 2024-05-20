class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
    @project_with_members = {}

    @memberships.each do |membership|
      project = Project.find(membership.project_id)

      if @project_with_members[project.id] == nil
        @project_with_members[project.id] = project.id
        @project_with_members[project.id] = {
          "project" => project,
          "employees" => []
        }
      end
      employee = Employee.find(membership.employee_id)
      @project_with_members[project.id]["employees"] << employee
    end

    puts " -------- "
    puts @project_with_members
    puts " -------- "
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
