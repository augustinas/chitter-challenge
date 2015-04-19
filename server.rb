require 'sinatra'
require 'data_mapper'
require 'sinatra/partial'

# Note to self: ALWAYS(!!!) load models before doing database setup

require_relative 'app/models/user'

require_relative 'app/data_mapper_setup'

require_relative 'app/controllers/users'

enable :sessions

set :views, File.dirname(__FILE__) + '/app/views'
set :partial_template_engine, :erb

get '/' do
  @user_name = session[:name]
  erb :index
end
