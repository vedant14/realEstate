require 'rails_helper'

RSpec.describe "properties/index", type: :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :address => "MyText",
        :user => nil
      ),
      Property.create!(
        :address => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
