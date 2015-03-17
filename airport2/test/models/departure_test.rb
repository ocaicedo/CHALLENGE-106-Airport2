# == Schema Information
#
# Table name: departures
#
#  id         :integer          not null, primary key
#  date       :datetime
#  status     :integer
#  flight_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DepartureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
