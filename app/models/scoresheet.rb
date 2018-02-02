class Scoresheet < ApplicationRecord
  validates :user_id, :name, :contest_id, presence: true

  belongs_to :user

  belongs_to :contest

  has_many :scorings

end
