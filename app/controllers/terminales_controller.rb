class TerminalesController < ApplicationController
  before_action :set_terminale, only: [:show, :edit, :update, :destroy]

  # GET /terminales
  # GET /terminales.json
  def index
    @terminales = Terminale.all
  end

  # GET /terminales/1
  # GET /terminales/1.json
  def show
  end

  # GET /terminales/new
  def new
    @terminale = Terminale.new
  end

  # GET /terminales/1/edit
  def edit
  end

  # POST /terminales
  # POST /terminales.json
  def create
    @terminale = Terminale.new(terminale_params)

    respond_to do |format|
      if @terminale.save
        format.html { redirect_to @terminale, notice: 'Terminale was successfully created.' }
        format.json { render :show, status: :created, location: @terminale }
      else
        format.html { render :new }
        format.json { render json: @terminale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminales/1
  # PATCH/PUT /terminales/1.json
  def update
    respond_to do |format|
      if @terminale.update(terminale_params)
        format.html { redirect_to @terminale, notice: 'Terminale was successfully updated.' }
        format.json { render :show, status: :ok, location: @terminale }
      else
        format.html { render :edit }
        format.json { render json: @terminale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminales/1
  # DELETE /terminales/1.json
  def destroy
    @terminale.destroy
    respond_to do |format|
      format.html { redirect_to terminales_url, notice: 'Terminale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminale
      @terminale = Terminale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminale_params
      params.require(:terminale).permit(:idterminal, :nombreterminal, :telefono, :direccion)
    end
end
