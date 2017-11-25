class User < ApplicationRecord

  has_many :issues
  has_many :challenges
end
