class Migration < ActiveRecord::Base

  attr_accessible :arrival_at, :departure_at,
               :from_pond, :from_pond_latitude, :from_pond_longitude,
               :to_pond, :to_pond_latitude, :to_pond_longitude

end
