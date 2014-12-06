class BoletosController < ApplicationController
  before_action :set_boleto, only: [:show, :edit, :update, :destroy]

  # GET /boletos
  # GET /boletos.json
  def index
    @boletos = Boleto.all
  end

  # GET /boletos/1
  # GET /boletos/1.json
  def show
  end

  # GET /boletos/new
  def new
    @boleto = Boleto.new
  end

  # GET /boletos/1/edit
  def edit
  end

  # POST /boletos
  # POST /boletos.json
  def create
    @boleto = Boleto.new(boleto_params)
     @boleto.usuario= 'S/u'
    @boleto.puntos=0


    if @boleto.id_trayecto == 'vermex' or @boleto.id_trayecto == 'mexver'
      @boleto.total=700

    else
      if @boleto.id_trayecto == 'puever' or @boleto.id_trayecto == 'verpue'
      @boleto.total=400

      else
      
      end


    end




    respond_to do |format|
      if @boleto.save
        format.html { redirect_to @boleto, notice: 'Boleto was successfully created.' }
        format.json { render :show, status: :created, location: @boleto }
      else
        format.html { render :new }
        format.json { render json: @boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boletos/1
  # PATCH/PUT /boletos/1.json
  def update
    respond_to do |format|
      if @boleto.update(boleto_params)
        format.html { redirect_to @boleto, notice: 'Boleto was successfully updated.' }
        format.json { render :show, status: :ok, location: @boleto }
      else
        format.html { render :edit }
        format.json { render json: @boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boletos/1
  # DELETE /boletos/1.json
  def destroy
    @boleto.destroy
    respond_to do |format|
      format.html { redirect_to boletos_url, notice: 'Boleto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleto
      @boleto = Boleto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boleto_params
      params.require(:boleto).permit(:folio, :usuario, :id_trayecto, :fecha_venta, :total, :puntos)
    end
end
