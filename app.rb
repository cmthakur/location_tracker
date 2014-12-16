require 'rubygems'
require 'sinatra'
require 'json'
require 'logger'
require 'geoip'
require 'colorize'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].sort.each {|file| require file}

module LocationTracker
  class App < Sinatra::Base
    set :logging, true
    set :raise_errors, true
    set :show_exceptions, false
    set :port, 8080


    get '/' do
      ip = params['ip'] || request.ip
      Tracker.country_codes(ip)
    end

    get '/details' do
      ip = params['ip'] || request.ip
      Tracker.get_details(ip).to_json
    end

  end
end

if __FILE__ == $0
  LocationTracker::App.run!
end
