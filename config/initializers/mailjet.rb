#initializers/mailjet.rb

Mailjet.configure do |config|
	config.api_key = 'Rails.application.credentials.dig(:api_key_mailjet)'
	config.secret_key = 'Rails.application.credentials.dig(:api_key_secret_mailjet)'
	config.default_from = 'default@example.com'
end

