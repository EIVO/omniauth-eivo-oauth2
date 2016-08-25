require 'omniauth-oauth2'

module OmniAuth
	module Strategies
		class Eivo < OmniAuth::Strategies::OAuth2
		
			option :name, "eivo"

			option :client_options, { :site => "https://sso.eivo.fr" }

			uid { raw_info['id'] }

			info do
				{
					:email => raw_info['email']
					:first_name => raw_info['firstname']
					:last_name => raw_info['lastname']
				}
			end

			extra do
				{
					'raw_info' => raw_info
				}
			end

			def raw_info
				@raw_info ||= access_token.get('/api/v1/me.json').parsed
			end

			# Required for omniauth-oauth2 >= 1.4
			# https://github.com/intridea/omniauth-oauth2/issues/81
			def callback_url
				full_host + script_name + callback_path
			end

		end
	end
end