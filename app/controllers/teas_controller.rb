class TeasController < ApplicationController

  before_action :get_tea, only: :show

  def index
    @teas = Tea.all
  end

  def new
    @tea = Tea.new
  end



  def create
    @tea = Tea.create(post_params(:name, :category, :description))
    redirect_to tea_path(@tea)
  end

  private

  def get_tea
    @tea = Tea.find_by(id: params[:id])
  end

  def post_params(*args)
    params.require(:tea).permit(*args)
  end

end
