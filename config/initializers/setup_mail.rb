ActionMailer::Base.smtp_settings = {
  :port => 587,
    :address => 'smtp.gmail.com',
    :user_name => "lehapunk@mail.ru",
    :password => "password",
    :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?