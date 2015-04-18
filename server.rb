require 'sinatra'

enable :sessions

set :views, File.dirname(__FILE__) + '/app/views'
set :partial_template_engine, :erb

get '/' do
  erb :index
end