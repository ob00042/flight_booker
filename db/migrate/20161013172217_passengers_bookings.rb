class PassengersBookings < ActiveRecord::Migration[5.0]
  def change
  	create_table :bookings_passengers, id: false do |t|
  		t.belongs_to :booking, index: true
  		t.belongs_to :passenger, index: true
  	end
  end
end
