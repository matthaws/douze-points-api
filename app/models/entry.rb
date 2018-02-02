# == Schema Information
#
# Table name: entries
#
#  id            :integer          not null, primary key
#  artist        :string
#  song_title    :string
#  final_score   :integer
#  final_ranking :integer
#  video_url     :string
#  finalist      :boolean          default(FALSE)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  country_id    :integer          not null
#  contest_id    :integer          not null
#

class Entry < ApplicationRecord
  validates :country, :contest, presence: true
  validates_uniqueness_of :country, scope: :contest

  belongs_to :country

  belongs_to :contest

  has_many :entries

  has_many :comments, as: :commentable



end
