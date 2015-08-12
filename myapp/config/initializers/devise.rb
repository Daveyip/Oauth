Devise.setup do |config|
  #Replace example.com with your own domain name
  #config.mailer_sender = 'mailer@example.com'
  config.mailer_sender = '10013601@life.hkbu.edu.hk' 
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  #Add your ID and secret here
  #ID first, secret second
  config.omniauth :google_oauth2, "739605644666-kj3tuu5q0jn3su5s2lpeo4778qqdd2e2.apps.googleusercontent.com", "ZvF44rshwHzZbLxhnXDLF1vH"
end