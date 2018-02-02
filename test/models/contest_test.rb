# == Schema Information
#
# Table name: contests
#
#  id               :integer          not null, primary key
#  year             :integer          not null
#  winning_entry_id :integer
#  location         :string
#  host_country_id  :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ContestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
