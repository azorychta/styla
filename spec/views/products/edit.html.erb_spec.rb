require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :price => "9.99",
      :picture => "MyString",
      :collection1_id => 1,
      :collection2_id => 1,
      :collection3_id => 1,
      :collection4_id => 1,
      :collection5_id => 1,
      :collection6_id => 1
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "input#product_price[name=?]", "product[price]"
      assert_select "input#product_picture[name=?]", "product[picture]"
      assert_select "input#product_collection1_id[name=?]", "product[collection1_id]"
      assert_select "input#product_collection2_id[name=?]", "product[collection2_id]"
      assert_select "input#product_collection3_id[name=?]", "product[collection3_id]"
      assert_select "input#product_collection4_id[name=?]", "product[collection4_id]"
      assert_select "input#product_collection5_id[name=?]", "product[collection5_id]"
      assert_select "input#product_collection6_id[name=?]", "product[collection6_id]"
    end
  end
end
