5.times do |user|
	User.create!(
		full_name: "Vedant #{user}",
		phone: "9767137428",
		email: "vedant.lohbare#{user}@gmail.com",
		password: "asdfasdf",
		password_confirmation: "asdfasdf"
	)
end

cities = ['Nagpur', 'Mumbai', 'Bengaluru', 'Delhi', 'Pune']
societies = ['Mahindra Bloomdale', 'Godrej Anandam', 'La Sallete', 'Kalpataru', 'Tata Capital']
types = ['residential_apartment', 'villa', 'others']
furnishings = ['unfurnished', 'semi_furnished', 'fully_furnished']
avail = ['ready_to_move', 'under_construction', 'ready_to_move']


5.times do |property|
  Property.create!(
    bedroom: "1",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
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
	description: "Great view on apartment"
    )
end
puts '5 one bhk Rent property posted'

5.times do |property|
  Property.create!(
    bedroom: "1",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
	super_built_up_area: "#{(property+1) * 45}",
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
	description: "Great view on apartment"
    )
end
puts '5 one bhk Sell property posted'


5.times do |property|
  Property.create!(
    bedroom: "2",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
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
	price: "#{(property+1) * 2000}",
	parking: "#{(property+1)}",
	description: "Great view on apartment"
    )
end
puts '5 two bhk Rent property posted'



5.times do |property|
  Property.create!(
    bedroom: "2",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
	super_built_up_area: "#{(property+1) * 45}",
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
	description: "Great view on apartment"
    )
end
puts '5 two bhk Sell property posted'


5.times do |property|
  Property.create!(
    bedroom: "3",
    city: cities.sample,
    carpet_area: "#{(property+1) * 25}",
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
	price: "#{(property+1) * 3400}",
	parking: "#{(property+1)}",
	description: "Great view on apartment"
    )
end
puts '5 three bhk Rent property posted'


