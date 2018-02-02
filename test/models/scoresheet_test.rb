# == Schema Information
#
# Table name: scoresheets
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  contest_id :integer
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ScoresheetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
