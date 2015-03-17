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

class Departure < ActiveRecord::Base
  belongs_to :flight
  enum :status => [:closed, :on_gate, :boarding, :took_of ]
end
