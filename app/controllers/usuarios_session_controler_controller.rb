class UsuariosSessionControlerController < ApplicationController
  def new
  	@usuario = Usuario.new
  end

  def create
  	if @usuario = login(params[:usuario],params[:contraseña])
  		redirect_back_or_to(posts_path,message: "login exitoso")
  	else
  		flash.now[:alert] = "algo mal"
  		render action: :new
  	end

  end

  def destroy
  	logout
  	redirect_to_(:usuarios, message: "sfuera")

  end
end
