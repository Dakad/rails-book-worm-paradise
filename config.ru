# This file is used by Rack-based servers to start the application.

# require_relative 'config/environment'
require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application

if Rails.env.development?

  options = Rails::Server.new.options
  Rails.application.config.after_initialize do
    `open http://localhost:3003`
    # pp "http://#{options[:Host]}:#{options[:Port]}"
    # `open http://#{options[:Host]}:#{options[:Port]}`
  end
  
  # Launchy.open("http://#{options[:Host]}:#{options[:Port]}/admin")
end
