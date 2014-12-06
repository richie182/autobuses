  ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "railscasts.com",
  :user_name            => "richardgomez1092@gmail.com",
  :password             => "vana182.",
  :authentication       => "plain",
  :enable_starttls_auto => true
  }