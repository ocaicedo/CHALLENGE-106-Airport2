# == Schema Information
#
# Table name: passengers
#
#  id         :integer          not null, primary key
#  passport   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Passenger < ActiveRecord::Base
	has_and_belongs_to_many :flights
end
