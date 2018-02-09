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
    debugger
    photo_url = graph.get_picture_data('me')['data']['url']
    self.where(uid: uid).first_or_initialize.tap do |user|
      user.uid = uid
      user.username = username
      user.avatar_url = photo_url
      user.save!
    end
  end

  private

  def create_default_scoresheets

  end

end
