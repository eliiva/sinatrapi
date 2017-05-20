#запросы API
require 'sinatra'

require 'sinatra/namespace'

require 'sinatra/base'

require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'

DB = Sequel.connect(
    adapter: :postgres,
    database: 'sinatrapi_development',
    host: 'localhost',
    password: 'password',
    user: 'pgadmin',
    max_connections: 10,
# logger: Logger.new('log/db.log')
)


%w[controllers models routes].each { |dir| Dir.glob("./#{dir}/*.rb", &method(:require)) }

# module MyAppModule
#   class App < Sinatra::Base
#     register Sinatra::Namespace

    get '/' do
      'Hello, World!'
    end

    namespace '/api/v1' do
      get '/hello/:name' do
        "Hello, #{params[:name]}"
      end
    end

    get '/jobs.?:format?' do
      'It work!'
    end

    get '/say/*/to/*' do
      params[:splat].to_s
    end

    get '/*' do
      "Hello! Here is your #{params[:splat]}. Let's see it"
    end

    get '/redtest' do
      redirect to('/test')
    end

    get %r{/hello/([\W]+)} do |c|
      "Hello, #{c}!"
    end


#   end
# end
