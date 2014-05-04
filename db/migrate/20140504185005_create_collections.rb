class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.decimal :price
      t.string :picture
      t.integer :product1_id
      t.integer :product2_id
      t.integer :product3_id
      t.integer :product4_id
      t.integer :product5_id
      t.integer :product6_id

      t.timestamps
    end
  end
end
