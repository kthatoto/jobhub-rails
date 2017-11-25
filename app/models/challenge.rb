class Challenge < ApplicationRecord

  enum status: {
    challenging: 0,
    judging: 1,
    accepted: 2,
  }
  belongs_to :issue
  belongs_to :user
end
