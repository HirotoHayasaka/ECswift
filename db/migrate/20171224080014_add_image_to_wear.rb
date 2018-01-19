class AddImageToWear < ActiveRecord::Migration[5.1]
  def change
    add_column :wears, :image, :image
  end
end
