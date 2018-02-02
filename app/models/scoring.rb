# == Schema Information
#
# Table name: scorings
#
#  id            :integer          not null, primary key
#  song_score    :integer
#  dance_score   :integer
#  cheese_score  :integer
#  bonus_points  :integer
#  bonus_comment :text
#  score_note    :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  scoresheet_id :integer          not null
#  entry_id      :integer          not null
#  costume_score :integer
#

class Scoring < ApplicationRecord
  validates :scoresheet, :entry, presence: true
  validates :song_score,
            :dance_score,
            :cheese_score,
            :costume_score,
              inclusion: {
                in: (0..12).to_a,
                allow_nil: true,
                message: "Value must be between zero and douze points"
              }

  belongs_to :scoresheet

  belongs_to :entry

  def user
    self.scoresheet.user
  end

  has_many :comments, as: :commentable

  def score
    #by default excludes bonus
    self.song_score + self.dance_score + self.cheese_score + self.costume_score
  end

end
