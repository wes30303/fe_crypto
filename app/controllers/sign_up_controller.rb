class SignUpController < ApplicationController

def index
end

def create
    new_user = User.new(user_params)
    if new_user.save
      session[:user_id] = new_user.id
      redirect_to '/dashboard'
    end
  end

  private
  def user_params
    params.permit(:email, :password, :password_confirmation, :account_balance)
  end

end
