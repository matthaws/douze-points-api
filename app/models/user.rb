class User < ApplicationRecord
  validates :username, presence: true

  def self.from_facebook(graph)
    uid = graph.get_object('me')['id']
    username = graph.get_object('me')['name']
    photo_url = graph.get_picture_data('me')['url']
    self.where(uid: uid).first_or_initialize.tap do |user|
      user.uid = uid
      user.username = username
      user.avatar_url = photo_url
      user.save!
    end
  end

end
