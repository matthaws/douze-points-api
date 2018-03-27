# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  username    :string
#  bio         :text
#  avatar_url  :string
#  email       :string
#  uid         :string
#  provider    :string
#  oauth_token :string
#  string      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true

  has_many :scoresheets, dependent: :destroy

  has_many :scorings, through: :scoresheets

  has_many :comments

  def self.from_facebook(graph)
    uid = graph.get_object('me')['id']
    username = graph.get_object('me')['name']
    photo_url = graph.get_picture_data('me', type: 'large')['data']['url']
    self.where(uid: uid).first_or_initialize.tap do |user|
      debugger
      user.uid = uid
      user.username = username
      user.avatar_url = photo_url
      user.save!
      user.create_default_scoresheets if user.scoresheets.empty?
    end
  end

  def create_default_scoresheets
    Scoresheet.create(
      user_id: self.id,
      name: 'Default Scoresheet (2018)',
      contest: Contest.find_by_year(2018)
    )
  end

end
