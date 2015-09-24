get '/' do
 erb :homepage
end

get '/login' do
  erb :login
end

get '/logout' do
  session[:user_id] = nil
  redirect "/"
end