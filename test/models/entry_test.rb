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
#  language      :string
#

require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
