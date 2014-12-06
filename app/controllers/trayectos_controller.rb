class TrayectosController < ApplicationController
  before_action :set_trayecto, only: [:show, :edit, :update, :destroy]

  # GET /trayectos
  # GET /trayectos.json
  def index
    @trayectos = Trayecto.all
  end

  # GET /trayectos/1
  # GET /trayectos/1.json
  def show
  end

  # GET /trayectos/new
  def new
    @trayecto = Trayecto.new
  end

  # GET /trayectos/1/edit
  def edit
  end

  # POST /trayectos
  # POST /trayectos.json
  def create
    @trayecto = Trayecto.new(trayecto_params)

    respond_to do |format|
      if @trayecto.save
        format.html { redirect_to @trayecto, notice: 'Trayecto was successfully created.' }
        format.json { render :show, status: :created, location: @trayecto }
      else
        format.html { render :new }
        format.json { render json: @trayecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trayectos/1
  # PATCH/PUT /trayectos/1.json
  def update
    respond_to do |format|
      if @trayecto.update(trayecto_params)
        format.html { redirect_to @trayecto, notice: 'Trayecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @trayecto }
      else
        format.html { render :edit }
        format.json { render json: @trayecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trayectos/1
  # DELETE /trayectos/1.json
  def destroy
    @trayecto.destroy
    respond_to do |format|
      format.html { redirect_to trayectos_url, notice: 'Trayecto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trayecto
      @trayecto = Trayecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trayecto_params
      params.require(:trayecto).permit(:id_trayecto, :idterminal, :idterminal2, :hora_salida, :hora_llegada, :precio, :puntos, :idautobus)
    end
end
