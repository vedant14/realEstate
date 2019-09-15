5.times do |user|
	User.create!(
		full_name: "Vedant #{user}",
		phone: "9767137428",
		email: "vedant.lohbare#{user}@gmail.com",
		password: "asdfasdf",
		password_confirmation: "asdfasdf"
	)
end
AdminUser.create!(
	full_name: "Vedant Admin",
	phone: "9767137428",
	email: "admin@vedant.com",
	password: "asdfasdf",
	password_confirmation: "asdfasdf"
)

cities = ['Nagpur', 'Mumbai', 'Bengaluru', 'Delhi', 'Pune']
societies = ['Mahindra Bloomdale', 'Godrej Anandam', 'La Sallete', 'Kalpataru', 'Tata Capital']
types = ['Residential Apartment', 'Villa', 'Independent Bunglow']
furnishings = ['Un-furnished', 'Semi-furnished', 'Fully-furnished']
avail = ['ready_to_move', 'under_construction', 'ready_to_move']
feature_list = ['unstar','unstar','unstar','unstar','unstar','unstar','star']

5.times do |property|
  Property.create!(
    bedroom: "1",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
    address: "Pragati Colony",
	super_built_up_area: "#{(property+1) * 45}",
	bathroom: "#{(property+1)}",
	balcony: "#{(property+1) *2}",
	furnishing: furnishings.sample,
	user_id: "#{property +1 }",
	pincode: "400123",
	society_name: societies.sample,
	unit_no: "2A - #{(property+1)}",
	service: "Rent",
	property_type: types.sample,
	total_floors: "11",
	on_floor: "#{(property+1)}",
	availability: avail.sample,
	price: "#{(property+1) * 1200}",
	parking: "#{(property+1)}",
	description: "Great view on apartment",
	status: "Approved",
	feature: feature_list.sample
    )
end
puts '5 one bhk Rent property posted'

5.times do |property|
  Property.create!(
    bedroom: "1",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
	super_built_up_area: "#{(property+1) * 45}",
	address: "Pragati Colony",
	bathroom: "#{(property+1)}",
	balcony: "#{(property+1) *2}",
	furnishing: furnishings.sample,
	user_id: "#{property +1 }",
	pincode: "400123",
	society_name: societies.sample,
	unit_no: "2A - #{(property+1)}",
	service: "Sell",
	property_type: types.sample,
	total_floors: "11",
	on_floor: "#{(property+1)}",
	availability: avail.sample,
	price: "#{(property+1) * 10000}",
	parking: "#{(property+1)}",
	description: "Great view on apartment",
	status: "Approved",
	feature: feature_list.sample
    )
end
puts '5 one bhk Sell property posted'


5.times do |property|
  Property.create!(
    bedroom: "2",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
	super_built_up_area: "#{(property+1) * 45}",
	address: "Pragati Colony",
	bathroom: "#{(property+1)}",
	balcony: "#{(property+1) *2}",
	furnishing: furnishings.sample,
	user_id: "#{property +1 }",
	pincode: "400123",
	society_name: societies.sample,
	unit_no: "2A - #{(property+1)}",
	service: "Rent",
	property_type: types.sample,
	total_floors: "11",
	on_floor: "#{(property+1)}",
	availability: avail.sample,
	price: "#{(property+1) * 2000}",
	parking: "#{(property+1)}",
	description: "Great view on apartment",
	status: "Approved",
	feature: feature_list.sample
    )
end
puts '5 two bhk Rent property posted'



5.times do |property|
  Property.create!(
    bedroom: "2",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
	super_built_up_area: "#{(property+1) * 45}",
	address: "Pragati Colony",
	bathroom: "#{(property+1)}",
	balcony: "#{(property+1) *2}",
	furnishing: furnishings.sample,
	user_id: "#{property +1 }",
	pincode: "400123",
	society_name: societies.sample,
	unit_no: "2A - #{(property+1)}",
	service: "Sell",
	property_type: types.sample,
	total_floors: "11",
	on_floor: "#{(property+1)}",
	availability: avail.sample,
	price: "#{(property+1) * 13000}",
	parking: "#{(property+1)}",
	description: "Great view on apartment",
	status: "Approved",
	feature: feature_list.sample
    )
end
puts '5 two bhk Sell property posted'


5.times do |property|
  Property.create!(
    bedroom: "3",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
	super_built_up_area: "#{(property+1) * 45}",
	address: "Pragati Colony",
	bathroom: "#{(property+1)}",
	balcony: "#{(property+1) *2}",
	furnishing: furnishings.sample,
	user_id: "#{property +1 }",
	pincode: "400123",
	society_name: societies.sample,
	unit_no: "2A - #{(property+1)}",
	service: "Rent",
	property_type: types.sample,
	total_floors: "11",
	on_floor: "#{(property+1)}",
	availability: avail.sample,
	price: "#{(property+1) * 3400}",
	parking: "#{(property+1)}",
	description: "Great view on apartment",
	status: "Approved",
	feature: feature_list.sample
    )
end
puts '5 three bhk Rent property posted'


