class UsersController < ApplicationController

  skip_before_action :authenticate, only: [:create]

  def create

    require 'net/http'
    uri = URI.parse("https://github.com/login/oauth/access_token?code=#{params[:code]}&client_id=0dc6379899bfb7eda0b0&client_secret=9070c0b950f0a3e4b24ca68863a71e9506fa46a1")
    res = Net::HTTP.get(uri)
    res = res.split("&")[0].split("=")[1]

    uri = URI.parse("https://api.github.com/user?access_token=#{res}")
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
