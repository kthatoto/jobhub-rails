class UsersController < ApplicationController

  def create
    uri = URI.parse("https://api.github.com/user?access_token=#{params[:token]}")
    json = Net::HTTP.get(uri)
  end
end
