class SearchController < ApplicationController
before_action :current_user
  def index
    @crypto = find_crypto[:data]
  end

  private

  def find_crypto
    CryptoService.get_crypto(params[:search])
  end
end
