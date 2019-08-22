json.cities do
	json.array!(@properties) do |property|
		json.name property.city
		json.url properties_path
	end
end

json.societies do
	json.array!(@properties) do |property|
		json.name property.society_name
		json.url properties_path
	end
end
