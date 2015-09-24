get '/users/new' do
  erb :"users/create"
end

post '/users' do

  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    erb :"/users/create"
  end

end