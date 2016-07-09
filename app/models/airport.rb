class Airport < ActiveRecord::Base
  has_many :departing_flights, foreign_key: :from_id, class_name: "Flight"
  has_many :arriving_flights, foreign_key: :to_id, class_name: "Flight"
end
