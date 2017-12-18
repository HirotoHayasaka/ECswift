class CreateWears < ActiveRecord::Migration[5.1]
  def change
    create_table :wears do |t|
      t.string :item_name
      t.string :size
      t.integer :price
      t.string :link
      t.string :keywords
      t.string :brand
      t.integer :sales_percentage

      t.timestamps
    end
  end
end
