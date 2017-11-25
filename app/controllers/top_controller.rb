class TopController < ApplicationController


  def dashboard
    issues = []
    Issue.order("id desc").limit(10).each do |issue|
      issues << {
        id: issues.id,
        title: issue.title,
        price: issue.price,
        user: {
          id: issue.user_id,
          name: issue.user.name
        }
      }
    end
    render json: {
      user: {
        name: @user.name,
        detail: @user.detail
      },
      issues: issues,
      skills: Skill.pluck(:name)
    }
  end

  def mypage

    challenges = []
    @user.challenges.order("id desc").limit(10).each do |challenge|
      challenges << {
        title: challenge.title,
        cost: challenge.cost,
        status: challenge.status,
        issue: {
          id: challenge.issue.id,
          owner_name: challenge.issue.user.name,
        },
      }
    end

    issues = []
    @user.issues.order("id desc").limit(10).each do |issue|
      issues << {
        id: issue.id,
        title: issue.title,
        cost: issue.cost,
        status: issue.is_opend ? "open" : "closed",
      }
    end

    render json: {
      user: {
        name: @user.name,
        detail: @user.detail
      },
      challenges: challenges,
      issues: issues,
    }
  end
end
