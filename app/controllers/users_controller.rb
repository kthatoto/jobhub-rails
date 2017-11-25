class UsersController < ApplicationController

  def create
    uri = URI.parse("https://api.github.com/user?access_token=#{params[:token]}")
    require 'net/http'
    json = Net::HTTP.get(uri)
    json = JSON.parse(json)
    github_user_id = json['login']
    if User.find_by(github_user_id: github_user_id)
      render json: {
        message: "already exist",
        access_token: SecureRandom.urlsafe_base64
      }
    else
      User.create(name: github_user_id, github_user_id: github_user_id)
      render json: {
        message: "created",
        access_token: SecureRandom.urlsafe_base64
      }
    end
  end
end
