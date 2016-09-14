class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in. Welcome back #{user.name}."
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password.'
      redirect_to '/login'
    end
  end

  def destroy
    if session[:user_id]
      session[:user_id] = nil
      flash[:success] = 'Successfully logged out.'
    else
      flash[:warning] = 'You must log in before you log out.'
    end
     redirect_to '/login'
  end
end
