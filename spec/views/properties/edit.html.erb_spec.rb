require 'rails_helper'

RSpec.describe "properties/edit", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :address => "MyText",
      :user => nil
    ))
  end

  it "renders the edit property form" do
    render

    assert_select "form[action=?][method=?]", property_path(@property), "post" do

      assert_select "textarea[name=?]", "property[address]"

      assert_select "input[name=?]", "property[users_id]"
    end
  end
end
