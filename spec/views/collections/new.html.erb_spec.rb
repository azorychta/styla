require 'spec_helper'

describe "collections/new" do
  before(:each) do
    assign(:collection, stub_model(Collection,
      :name => "MyString",
      :price => "9.99",
      :picture => "MyString",
      :product1_id => 1,
      :product2_id => 1,
      :product3_id => 1,
      :product4_id => 1,
      :product5_id => 1,
      :product6_id => 1
    ).as_new_record)
  end

  it "renders new collection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", collections_path, "post" do
      assert_select "input#collection_name[name=?]", "collection[name]"
      assert_select "input#collection_price[name=?]", "collection[price]"
      assert_select "input#collection_picture[name=?]", "collection[picture]"
      assert_select "input#collection_product1_id[name=?]", "collection[product1_id]"
      assert_select "input#collection_product2_id[name=?]", "collection[product2_id]"
      assert_select "input#collection_product3_id[name=?]", "collection[product3_id]"
      assert_select "input#collection_product4_id[name=?]", "collection[product4_id]"
      assert_select "input#collection_product5_id[name=?]", "collection[product5_id]"
      assert_select "input#collection_product6_id[name=?]", "collection[product6_id]"
    end
  end
end
