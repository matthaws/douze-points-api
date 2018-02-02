# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  username    :string
#  bio         :text
#  avatar_url  :string
#  email       :string
#  uid         :string
#  provider    :string
#  oauth_token :string
#  string      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
