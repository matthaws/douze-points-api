# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :text             not null
#  parent_id        :integer
#  commentable_type :string
#  commentable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer          not null
#

class Comment < ApplicationRecord
  validates :body, :user, presence: true

  belongs_to :commentable, polymorphic: true

  belongs_to :user

end
