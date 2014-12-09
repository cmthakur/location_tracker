require 'rubygems'
require 'sinatra'
require 'redis'
require 'json'
require 'logger'
require 'colorize'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].sort.each {|file| require file}
I18n.enforce_available_locales = false
I18n.locale = :en

module LocationTracker
  class App < Sinatra::Base
    set :logging, true
    set :raise_errors, true
    set :show_exceptions, false


    get '/' do

    end

  end


end
