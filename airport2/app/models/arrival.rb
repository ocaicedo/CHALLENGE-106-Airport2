# == Schema Information
#
# Table name: arrivals
#
#  id         :integer          not null, primary key
#  date       :datetime
#  status     :integer
#  flight_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Arrival < ActiveRecord::Base
  belongs_to :flight
  enum :status => [:on_time, :delayed, :landing, :landed]
end
