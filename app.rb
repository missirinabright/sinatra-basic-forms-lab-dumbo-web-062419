require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(params['name'], params['breed'], params['age'])
    erb :display_puppy
  end
#### discrepancy in age and months_old attribute in specs!
### otherwise this is correct
