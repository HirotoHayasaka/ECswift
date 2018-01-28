class AddCategoryToWear < ActiveRecord::Migration[5.1]
  def change
    add_column :wears, :category, :integer
  end
end
