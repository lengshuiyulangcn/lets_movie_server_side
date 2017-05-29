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

class Invite < ApplicationRecord
  belongs_to :inviter, class_name: "User"
  belongs_to :invitee, class_name: "User"
  belongs_to :movie
end
