require 'sinatra'
require './lib/tasks/db'

namespace :db do
  task :environment do
    require 'sequel'
    ENV['DATABASE_URL'] ||= 'postgres://pgadmin:password@localhost/sinatrapi'
    ENV['RACK_ENV'] ||= 'development'
    ENV['DATABASE'] = 'sinatrapi_development' if ENV['RACK_ENV'] == 'development'
    ENV['DATABASE'] = 'sinatrapi_test' if ENV['RACK_ENV'] == 'test'
    ENV['DATABASE'] = 'sinatrapi_production' if ENV['RACK_ENV'] == 'production'
  end
end
