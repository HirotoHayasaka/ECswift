class AddPopularityToWear < ActiveRecord::Migration[5.1]
  def change
    add_column :wears, :popularity, :integer
  end
end
