#запросы API
require 'sinatra'

require 'sinatra/namespace'

require 'sinatra/base'

module MyAppModule
  class App < Sinatra::Base
    register Sinatra::Namespace

    get '/' do
      'Hello, World!'
    end

    # namespace '/api/v1' do
    #   get '/hello/:name' do
    #     "Hello, #{params[:name]}"
    #   end
    # end

    get '/*' do
      "Hello! Here is your #{params[:splat]}. Let's see it"
    end

    get '/redtest' do
      redirect to('/test')
    end

    get %r{/hello/([\W]+)} do |c|
      "Hello, #{c}!"
    end
  end
end
