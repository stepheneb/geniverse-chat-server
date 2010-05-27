require 'rubygems'
require 'sinatra'

# set :static, true
set :public, File.dirname(__FILE__) + '/chat/public'
set :template, File.dirname(__FILE__) + '/templates/template.jnlp'


def raw_post
  request.env["rack.input"].read
end

get '/' do
  redirect '/index.html'
end
