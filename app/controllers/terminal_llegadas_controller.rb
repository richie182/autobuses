class TerminalLlegadasController < ApplicationController
  before_action :set_terminal_llegada, only: [:show, :edit, :update, :destroy]

  # GET /terminal_llegadas
  # GET /terminal_llegadas.json
  def index
    @terminal_llegadas = TerminalLlegada.all
  end

  # GET /terminal_llegadas/1
  # GET /terminal_llegadas/1.json
  def show
  end

  # GET /terminal_llegadas/new
  def new
    @terminal_llegada = TerminalLlegada.new
  end

  # GET /terminal_llegadas/1/edit
  def edit
  end

  # POST /terminal_llegadas
  # POST /terminal_llegadas.json
  def create
    @terminal_llegada = TerminalLlegada.new(terminal_llegada_params)

    respond_to do |format|
      if @terminal_llegada.save
        format.html { redirect_to @terminal_llegada, notice: 'Terminal llegada was successfully created.' }
        format.json { render :show, status: :created, location: @terminal_llegada }
      else
        format.html { render :new }
        format.json { render json: @terminal_llegada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminal_llegadas/1
  # PATCH/PUT /terminal_llegadas/1.json
  def update
    respond_to do |format|
      if @terminal_llegada.update(terminal_llegada_params)
        format.html { redirect_to @terminal_llegada, notice: 'Terminal llegada was successfully updated.' }
        format.json { render :show, status: :ok, location: @terminal_llegada }
      else
        format.html { render :edit }
        format.json { render json: @terminal_llegada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminal_llegadas/1
  # DELETE /terminal_llegadas/1.json
  def destroy
    @terminal_llegada.destroy
    respond_to do |format|
      format.html { redirect_to terminal_llegadas_url, notice: 'Terminal llegada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal_llegada
      @terminal_llegada = TerminalLlegada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminal_llegada_params
      params.require(:terminal_llegada).permit(:idterminal2, :nombreterminal2, :telefono2, :direccion2)
    end
end
