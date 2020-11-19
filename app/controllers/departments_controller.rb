class DepartmentsController < ApplicationController
  before_action :set_departments,  only: [:show , :edit, :update, :destroy] 
  
  def index
  @departments = Department.all
  end

  def show
  end

  def new
    @department = Department.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @department = Department.new(dep_params)
  end

  def update
  if @department.save
    redirect_to departments_path
  else
    render :new
  end

  def destroy
      @department.destroy
      redirect_to departments_path
    end
  end
  
  
  private

  def set_departments
  @department = Department.find(params[:id])
  end


  def dep_params
    params.require(:department).permit(:name)
  end

end

