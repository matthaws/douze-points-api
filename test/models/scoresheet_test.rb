# == Schema Information
#
# Table name: scoresheets
#
#  id         :integer          not null, primary key
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#  name       :string           not null
#  contest_id :integer          not null
#

require 'test_helper'

class ScoresheetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
