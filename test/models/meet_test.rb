# == Schema Information
#
# Table name: meets
#
#  id         :integer          not null, primary key
#  name       :string
#  meeting    :date
#  subject    :text
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MeetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
