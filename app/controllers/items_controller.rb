class ItemsController < ApplicationController
  before_action :set_departments
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = @department.topics
  end

  def show
  end

  def new
    @item = @department.items.new
  end

  def create
    @item = @department.items.new(items_params)
    if @item.save
      redirect_to department_item_path(@department, @item)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to department_item_path(@department, @item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to department_items_path(@department)
  end

  private

  def set_item
    @items = @department.items.find(params[:id])
   
  end

  def item_params
    params.require(:item).permit(:name, :price, :body)
  end
end

