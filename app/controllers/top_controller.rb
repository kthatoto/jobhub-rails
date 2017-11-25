class TopController < ApplicationController

  def dashboard
    @issues = Issue.order("id desc").limit(10)
  end
end
