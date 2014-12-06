class TicketMailer < ActionMailer::Base
  default :from => "richardgomez1092@gmail.com"

  def registration_confirmation(ticket)
  mail(:to => ticket.correo, :subject => "Registered")
end

end

