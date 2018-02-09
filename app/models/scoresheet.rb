# == Schema Information
#
# Table name: scoresheets
#
#  id         :integer          not null, primary key
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#  name       :string           not null
#  contest_id :integer          not null
#

class Scoresheet < ApplicationRecord
  validates :user, :name, :contest, presence: true

  belongs_to :user

  belongs_to :contest

  has_many :scorings, dependent: :destroy

  has_many :comments, as: :commentable

  has_many :entries, through: :scorings, source: :entry

end
