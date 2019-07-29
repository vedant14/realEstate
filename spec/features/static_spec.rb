require 'rails_helper'

describe 'navigate' do
	it 'can be reached' do
		visit root_path 
		expect(page.status_code).to eq(200)
	end	

	it 'sees login if not signed in' do
		visit root_path
		logout(:user)
		expect(page).to have_content(/Sign Up/)
  	end
end

