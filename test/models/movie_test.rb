# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  title        :string
#  image_thumb  :string
#  image_middle :string
#  image_large  :string
#  description  :text
#  casts        :text
#  directors    :text
#  start_date   :datetime
#  end_date     :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
