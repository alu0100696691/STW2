require 'twitter'
require 'sinatra'
require './configure'

class CuentaAmigos  #lo usaremos para hacer los test unitarios de la api de twitter

        def usuario_test(cliente, nombre)
                cliente.user? nombre
        end

        def amigos_test(cliente, nombre)
                cliente.user(nombre).friends_count
        end
end




get '/' do
  @amigos_usuario = []
  @name = ''
  @number = 0
  erb :twitter
end

post '/' do
  @amigos_usuario = []
  client = my_twitter_client() 
  @name = params[:firstname] || ''
  @number = params[:n].to_i
  #@number = 1 if @number < 1

  if (client.user? @name) && (@number <= 10)
    ultimos_t = client.friends(@name, {}).take(@number)
    @amigos_usuario =(@amigos_usuario != '') ? ultimos_t.map{ |i| [i.name ,i.followers_count]} : ''
    @amigos_usuario.sort_by!{|a,b| b}.reverse!
    
  end
  erb :twitter
end

