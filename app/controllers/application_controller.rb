class ApplicationController < ActionController::API

  before_action :authenticate
  skip_before_action :authenticate, only: [:check]

  def check
    render json: 1
  end

  def authenticate
    access_token = request.headers["Authorization"]
    @user = User.find_by(access_token: access_token)
    if !@user
      render json: {message: "invalid access token"}
      return
    end
  end

end
