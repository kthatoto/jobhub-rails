class ChallengesController < ApplicationController

  def create
    Challenge.create(
      issue_id: params[:issue_id],
      user_id: @user.id,
      status: 'challenging',
    )
    render json: { message: "created" }
  end
end
