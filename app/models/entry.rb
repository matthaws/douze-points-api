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
  validates :country_id, :contest_id, presence: true
  validates_uniqueness_of :country_id, scope: :contest_id

  belongs_to :country

  belongs_to :contest

  has_many :entries

end
