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

	it "existe formulario donde preguntar nombre y cantidad de amigos a contar?" do
		assert last_response.body.include?("<p><b>Nombre de usuario en Twitter:</b></p>"), "El body debe contener nombre usuario."
		assert last_response.body.include?("<p><b>¿Cuántos amigos desea ver? </b></p>"), "El body debe contener cuantos amigos."	
	end

	it "Pie de pagina contiene: © 2014 Sistemas y Tecnologias Web - ULL " do
		assert_match "<p>© 2014 Sistemas y Tecnologias Web - ULL</p>", last_response.body
	end
	
	
end

