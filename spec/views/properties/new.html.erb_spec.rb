require 'rails_helper'

RSpec.describe "properties/new", type: :view do
  before(:each) do
    assign(:property, Property.new(
      :address => "MyText",
      :user => nil
    ))
  end

  it "renders new property form" do
    render

    assert_select "form[action=?][method=?]", properties_path, "post" do

      assert_select "textarea[name=?]", "property[address]"

      assert_select "input[name=?]", "property[users_id]"
    end
  end
end
