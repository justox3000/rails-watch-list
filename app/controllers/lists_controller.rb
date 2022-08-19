class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def show
    @list = List.find(params[:id])
  end
  def new
    @list = List.new
  end
  def create
    @list = List.create(check_params)
    redirect_to lists_path
  end

  private

  def check_params
    params.require(:lists).permit(:name)
  end
end
