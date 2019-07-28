require 'rails_helper'

RSpec.describe User, type: :model do
  before do
      @user = FactoryBot.create(:user)
  end
  describe "creation" do
  	  	it "can be created" do
  		expect(@user).to be_valid
  	end
  end
  describe "validations" do

  	it "cannot be created without full_name" do
  		@user.full_name = nil
  		expect(@user).to_not be_valid
  	end


    it "cannot be created without phone" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    it "phone can only contain integers and no spaces" do
      @user.phone = 'mygreatstr'    
      expect(@user).to_not be_valid
    end


    it 'phone needs to be 10 characters long' do
      @user.phone = '11223405689'
      expect(@user).to_not be_valid
    end
  end

end
