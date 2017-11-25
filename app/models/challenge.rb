class Challenge < ApplicationRecord

  enum status: {
    challenging: 0,
    judging: 1,
    rejected: 2,
    accepted: 3
  }
  belongs_to :issue
  belongs_to :user
end
