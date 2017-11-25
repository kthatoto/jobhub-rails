class UsersController < ApplicationController

  def create
    uri = URI.parse("https://api.github.com/user?access_token=#{params[:github_access_token]}")
    require 'net/http'
    json = Net::HTTP.get(uri)
    json = JSON.parse(json)
    github_user_id = json['login']
    if User.find_by(github_user_id: github_user_id)
      render json: {
        message: "already exist"
      }
    else
      access_token = SecureRandom.urlsafe_base64
      User.create(
        name: github_user_id,
        github_user_id: github_user_id,
        access_token: access_token
      )
      render json: {
        message: "created",
        access_token: access_token
      }
    end
  end
end
