require 'rubygems'
require 'lib/faye'
require 'sinatra'
require 'app.rb'

use Faye::RackAdapter, :mount   => '/chat/comet',
                       :timeout => 25

run Sinatra::Application
