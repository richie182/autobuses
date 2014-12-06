class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tickets = Ticket.all
    respond_with(@tickets)
  end

  def show
    respond_with(@ticket)
  end

  def new
    @ticket = Ticket.new
    respond_with(@ticket)
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.puntos=0
    @ticket.folio=Random.rand(1...425445454545456)
    @ticket.vendido='en linea'




    if @ticket.trayecto == 'vermex' or @ticket.trayecto == 'mexver'
      @ticket.precio=700

    else
      if @ticket.trayecto == 'puever' or @ticket.trayecto == 'verpue'
      @ticket.precio=400

      else
      
      end


    end



respond_to do |format|
  if @ticket.save
  TicketMailer.registration_confirmation(@ticket).deliver
  format.html { redirect_to(@ticket, :notice => 'User was successfully created.') }
  format.xml  { render :xml => @ticket, :status => :created, :location => @ticket }
  else
  format.html { render :action => "new" }
  format.xml  { render :xml => @ticket.errors, :status => :unprocessable_entity }
  end
  end












  end

















  def update
    @ticket.update(ticket_params)
    respond_with(@ticket)
  end

  def destroy
    @ticket.destroy
    respond_with(@ticket)
  end

  private
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:folio, :nombre, :correo, :vendido, :trayecto, :precio, :puntos, :viaje, :vendido)
    end
end
