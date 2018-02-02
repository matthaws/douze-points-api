# == Schema Information
#
# Table name: scorings
#
#  id            :integer          not null, primary key
#  scoresheet_id :integer
#  entry_id      :integer
#  song_score    :integer
#  dance_score   :integer
#  cheese_score  :integer
#  bonus_points  :integer
#  bonus_comment :text
#  score_note    :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ScoringTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
