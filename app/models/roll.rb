class Roll < ApplicationRecord
  belongs_to :dice

  has_many :user_roll
end
