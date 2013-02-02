class UserMailer < ActionMailer::Base
  default :from => "myvk@example.com"
  
  def registration_email#(email, hash, password)
    #conf = YAML.load_file("#{Rails.root}/config/global_config.yml")
    #@url = conf['host'] + 'confirm_registration/?key=' + Digest::MD5.hexdigest(email.to_s + password.to_s + hash.to_s) + '&email=' + email.to_s
    
    mail(:to => 'aleksey.shkadov@mail.ru', :subject => "Rgistered")
  end
end