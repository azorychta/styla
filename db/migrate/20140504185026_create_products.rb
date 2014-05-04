class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :picture
      t.integer :collection1_id
      t.integer :collection2_id
      t.integer :collection3_id
      t.integer :collection4_id
      t.integer :collection5_id
      t.integer :collection6_id

      t.timestamps
    end
  end
end
