require 'logger'
use Rack::CommonLogger, logger

require File.join(File.dirname(__FILE__), 'app.rb')

run Rack::URLMap.new('/' => LocationTracker::App )
