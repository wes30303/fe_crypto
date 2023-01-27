class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if !user.nil? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/dashboard'
    else
      render(json: { message: "Username or password is Incorrect." }, status: :unauthorized)
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
