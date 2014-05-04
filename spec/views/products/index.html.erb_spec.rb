require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :price => "9.99",
        :picture => "Picture",
        :collection1_id => 1,
        :collection2_id => 2,
        :collection3_id => 3,
        :collection4_id => 4,
        :collection5_id => 5,
        :collection6_id => 6
      ),
      stub_model(Product,
        :name => "Name",
        :price => "9.99",
        :picture => "Picture",
        :collection1_id => 1,
        :collection2_id => 2,
        :collection3_id => 3,
        :collection4_id => 4,
        :collection5_id => 5,
        :collection6_id => 6
      )
    ])
  end

  it "renders a list of products" do
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
