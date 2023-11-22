class Admin::ItemsController < ApplicationController
  before_action :require_admin
  before_action :set_item, only: %i[ edit update destroy]

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to items_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, status: :see_other
  end

    private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description)
  end

  def require_admin
    redirect_to admin_sessions_new_path unless session[:admin]
  end

end
