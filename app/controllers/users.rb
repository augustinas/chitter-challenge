get '/users/new' do
  erb :'users/new'
end

post '/users' do
  session[:name] = params[:name]
  User.create(username: params[:username],
              name: params[:name],
              email: params[:email],
              password: params[:password])
  redirect to '/'
end
