require 'spec_helper'

describe "collections/index" do
  before(:each) do
    assign(:collections, [
      stub_model(Collection,
        :name => "Name",
        :price => "9.99",
        :picture => "Picture",
        :product1_id => 1,
        :product2_id => 2,
        :product3_id => 3,
        :product4_id => 4,
        :product5_id => 5,
        :product6_id => 6
      ),
      stub_model(Collection,
        :name => "Name",
        :price => "9.99",
        :picture => "Picture",
        :product1_id => 1,
        :product2_id => 2,
        :product3_id => 3,
        :product4_id => 4,
        :product5_id => 5,
        :product6_id => 6
      )
    ])
  end

  it "renders a list of collections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
