class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  "include CoinbaseHelper"

  private
  CLIENT_ID = '4d4e084668c9d3fd3a95f0830f31e45ecc6582e4b4ba2490a1690067b4a81fb2'
  CLIENT_SECRET = '824528640485a0fe14ca083d4a24f26e1f372bffa245a321d8cabb8a65e69570'
  # put scope variable urls you want to pull below
  CLIENT_SCOPE = ''
  BASEURL = 'http://localhost:3000/'
end
