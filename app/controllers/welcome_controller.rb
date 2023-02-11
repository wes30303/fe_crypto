class WelcomeController < ApplicationController
before_action :current_user

  def index
    if !current_user.nil?
      redirect_to "/dashboard"
    end
  end
end
