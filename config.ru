# require './sinatrapi'
#
# run Sinatra::Application

root = File.expand_path File.dirname(__FILE__)
require File.join( root , 'sinatrapi.rb' )

app = Rack::Builder.app do
  run MyAppModule::App
end

run app
