class UserRoll < ApplicationRecord
  belongs_to :user
  belongs_to :roll
end
