class UsuarioMailer < ActionMailer::Base
 default :from => "richardgomez1092@gmail.com"

  def registration_confirmation(usuario)
  mail(:to => usuario.correo, :subject => "Registered")
  end
end
