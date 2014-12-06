class CochesController < ApplicationController
  before_action :set_coch, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @coches = Coch.all
    respond_with(@coches)
  end

  def show
    respond_with(@coch)
  end

  def new
    @coch = Coch.new
    respond_with(@coch)
  end

  def edit
  end

  def create
    @coch = Coch.new(coch_params)
    @coch.save
    respond_with(@coch)
  end

  def update
    @coch.update(coch_params)
    respond_with(@coch)
  end

  def destroy
    @coch.destroy
    respond_with(@coch)
  end

  private
    def set_coch
      @coch = Coch.find(params[:id])
    end

    def coch_params
      params.require(:coch).permit(:matricula, :user_id)
    end
end
