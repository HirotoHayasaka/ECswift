class AddAddedtimeToWear < ActiveRecord::Migration[5.1]
  def change
    add_column :wears, :addedtime, :time
    add_column :wears, :clickedtime, :time
  end
end
