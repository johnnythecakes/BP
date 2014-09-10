class SessionsController < ApplicationController

	def new
    # Redirect to the CoinBase URL
    redirect_to login_url.to_s
  end

  def create
    # Get user tokens from Coinbase Helper
    user_tokens = get_tokens(params[:code])
  end

end
