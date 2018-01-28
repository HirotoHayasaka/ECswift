class AddColorsToWear < ActiveRecord::Migration[5.1]
  def change
    add_column :wears, :colors, :string
  end
end
