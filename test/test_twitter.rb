ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require_relative '../twitter.rb'

include Rack::Test::Methods
	
	def app
		Sinatra::Application
	end

	def test_index
    		get '/'
    		assert last_response.ok?
  	end

	def test_title
		get "/"
		assert last_response.body.include?("<title>Contador Twitter</title>"), "El titulo debe ser 'Contador Twitter'"
	end


