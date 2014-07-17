class SessionsController < ApplicationController
  def create
#    debugger 
    user = User.from_auth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    flash[:notice] = "welcome  #{user.nickname}"
    redirect_to posts_path
  end
end
