require 'sinatra'
require 'data_mapper'
require 'sinatra/partial'

require_relative 'app/data_mapper_setup'

require_relative 'app/models/user'

enable :sessions

set :views, File.dirname(__FILE__) + '/app/views'
set :partial_template_engine, :erb

get '/' do
  erb :index
end
