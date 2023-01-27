class SignUpController < ApplicationController

def index
end

def create
    new_user = User.new(user_params)
    if new_user.save
      redirect_to '/'
    end
  end

  private
  def user_params
    params.permit(:email, :password, :password_confirmation, :account_balance)
  end

end
