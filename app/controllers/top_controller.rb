class TopController < ApplicationController


  def dashboard
    @issues = []
    Issue.order("id desc").limit(10).each do |issue|
      @issues << {
        id: issues.id,
        title: issue.title,
        price: issue.price,
        user: {
          id: issue.user_id,
          name: issue.user.name
        }
      }
    end
    render json: @user
  end
end
