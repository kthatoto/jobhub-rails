class UsersController < ApplicationController

  skip_before_action :authenticate, only: [:create]

  def create
    uri = URI.parse("https://api.github.com/user?access_token=#{params[:github_access_token]}")
    require 'net/http'
    json = Net::HTTP.get(uri)
    json = JSON.parse(json)
    github_user_id = json['login']
    github_avatar_url = json['avatar_url']
    if user = User.find_by(github_user_id: github_user_id)
      render json: {
        message: "already exist",
        access_token: user.access_token,
      }
    else
      access_token = SecureRandom.urlsafe_base64
      User.create(
        name: github_user_id,
        github_user_id: github_user_id,
        access_token: access_token,
        avatar_url: github_avatar_url,
      )
      render json: {
        message: "created",
        access_token: access_token
      }
    end
  end
end
