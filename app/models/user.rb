class User < ApplicationRecord
  validates :username, presence: true

  has_many :scoresheets, dependent: :destroy

  def self.from_facebook(graph)
    uid = graph.get_object('me')['id']
    username = graph.get_object('me')['name']
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
