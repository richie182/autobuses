class TestSesionesController < ApplicationController
   
   def iniciar_sesion
   @error_login = false;
   #Verifica si se ha enviado el formulario.
   if request.post?
      #Verifica si el nombre de usuario y la contraseña son correctos.
      if login(params[:nombre_usuario], params[:contrasena])
         #Los datos son correctos así que redirecciona a la página de bienvenida.
         redirect_to :controller => "principal", :action => "index";
      else
         #Los datos son incorrectos así que setea la variable @error_login a true para mostrar el error por pantalla.
         @error_login = true;
      end
   end
 end
################################################################################

   def cerrar_sesion
   @sesion = get_login();
   if @sesion
      logout();
   else
      redirect_to :controller => "test_sesiones", :action => "iniciar_sesion";
   end
 end
################################################################################
   def bienvenida
   @sesion = get_login();
   if @sesion
      @nombre = @sesion[:nombre];
      @apellido = @sesion[:apellido];
   else
      redirect_to :controller => "test_sesiones", :action => "iniciar_sesion";
   end
 end

################################################################################
   #Métodos privados.
   private
   def login(usuario, contrasena)
      
      #Verifica que el nombre de usuario y la contraseña sean correctos
      

      if usuario == "administrador" and contrasena == "1234"
         #Los datos son correctos entonces crea la sesión y devuelve true.
         session[:logueado] = true;
         session[:nombre] = "Cosme";
         session[:apellido] = "Fulanito";
         return true;
      else
         #Los datos no son correctos entonces devuelve false.
         return false;
      end



   end


################################################################################
   def logout
      reset_session;

end

################################################################################


   def get_login
      #Verifica si el usuario está logueado. Primero pregunta si existe la session[:logueado] y además que este sea true, si existe devuelve la sesión sino existe devuelve false.
      if defined?(session[:logueado]) and session[:logueado]
         #Está logueado.
         return session;
      else
         #No está logueado.
         return false;
      end
   end
end