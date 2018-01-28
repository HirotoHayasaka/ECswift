class AddSexToWear < ActiveRecord::Migration[5.1]
  def change
    add_column :wears, :sex, :integer
  end
end
