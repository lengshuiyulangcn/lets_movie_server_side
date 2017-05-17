# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nickname   :string
#  avatar_url :string
#  open_id    :string
#  session_id :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
