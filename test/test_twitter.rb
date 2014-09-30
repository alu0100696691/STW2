ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require_relative '../twitter.rb'

include Rack::Test::Methods
	
	def app
		Sinatra::Application
	end


describe "Contador Twitter" do

	before :all do
                @amigos_usuario = CuentaAmigos.new
                @client = my_twitter_client()
                @name = "joseantoniorpc"
                @name2 = "abcdefghijk"
        end

	it "carga la pagina index en el servidor?" do
    		get '/'
    		assert last_response.ok?
  	end

	it "el titulo de la pagina es Contador Twitter?" do
		get '/'
		assert last_response.body.include?("<title>Contador Twitter</title>"), "El titulo debe ser 'Contador Twitter'"
	end

	it "existe formulario donde preguntar nombre y cantidad de amigos a contar?" do
		get '/'
		assert last_response.body.include?("Nombre de usuario en Twitter:"), "El body debe contener nombre usuario."
		assert last_response.body.include?("¿Cuántos amigos desea ver?"), "El body debe contener cuantos amigos."	
	end

	it "existe el usuario?" do
                assert @amigos_usuario.usuario_test(@client, @name)
        end

        it "el numero de amigos coincide?" do
                assert_equal 7, @amigos_usuario.amigos_test(@client, @name)
        end

        it "el usuario no debe existir" do
                refute @amigos_usuario.usuario_test(@client, @name1)
        end

        it "el numero de amigos debe estar mal" do
                refute_equal 5, @amigos_usuario.amigos_test(@client, @name)
        end


	it "Pie de pagina contiene: © 2014 Sistemas y Tecnologias Web - ULL " do
		get '/'
		assert_match "<p>© 2014 Sistemas y Tecnologias Web - ULL</p>", last_response.body
	end
	
	
end

