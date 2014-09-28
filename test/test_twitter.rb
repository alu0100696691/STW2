ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require_relative '../twitter.rb'

include Rack::Test::Methods
	
	def app
		Sinatra::Application
	end

describe "STW2" do

	it "carga la pagina index en el servidor?" do
    		get '/'
    		assert last_response.ok?
  	end

	it "el titulo de la pagina es Contador Twitter?" do
		get "/"
		assert last_response.body.include?("<title>Contador Twitter</title>"), "El titulo debe ser 'Contador Twitter'"
	end
end

