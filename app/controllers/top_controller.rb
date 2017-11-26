class TopController < ApplicationController

  def dashboard
    issues = []
    Issue.order("id desc").limit(10).each do |issue|
      issues << {
        id: issue.id,
        title: issue.title,
        cost: issue.cost,
        user: {
          id: issue.user_id,
          name: issue.user.name
        }
      }
    end
    render json: {
      user: {
        name: @user.name,
        detail: @user.detail,
        avatar_url: @user.avatar_url,
      },
      issues: issues,
      skills: Skill.pluck(:name)
    }
  end

  def mypage

    challenges = []
    @user.challenges.order("id desc").limit(10).each do |challenge|
      challenges << {
        detail: challenge.detail,
        status: challenge.status,
        pull_request_url: "https://github.com/#{challenge.issue.user.github_user_id}/#{challenge.issue.repository_name}/pull/#{challenge.pull_request_id}",
        issue: {
          id: challenge.issue.id,
          title: challenge.issue.title,
          owner_name: challenge.issue.user.name,
          cost: challenge.issue.cost,
        },
      }
    end

    issues = []
    @user.issues.order("id desc").limit(10).each do |issue|
      issues << {
        id: issue.id,
        title: issue.title,
        cost: issue.cost,
        status: issue.is_opened ? "open" : "closed",
      }
    end

    render json: {
      user: {
        name: @user.name,
        detail: @user.detail,
        avatar_url: @user.avatar_url,
      },
      challenges: challenges,
      issues: issues,
    }
  end
end
