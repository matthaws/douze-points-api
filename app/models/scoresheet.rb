# == Schema Information
#
# Table name: scoresheets
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  contest_id :integer
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Scoresheet < ApplicationRecord
  validates :user_id, :name, :contest_id, presence: true

  belongs_to :user

  belongs_to :contest

  has_many :scorings

end
