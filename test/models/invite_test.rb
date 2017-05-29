# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  inviter_id :integer
#  invitee_id :integer
#  movie_id   :integer
#  meet_at    :datetime
#  location   :string
#  memo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InviteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
