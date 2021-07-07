require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
 get '/goodbye/:name' do 
    @goodbye = params[:name]
    "Goodbye, #{@goodbye}."
  end 

  get '/multiply/:int1/:int2' do 
    @int1 = params[:int1].to_i
    @int2 = params[:int2].to_i
    @multi = @int1 * @int2

    "returns #{@multi}"
  end


end