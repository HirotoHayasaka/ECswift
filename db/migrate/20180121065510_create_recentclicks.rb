class CreateRecentclicks < ActiveRecord::Migration[5.1]
  def change
    create_table :recentclicks do |t|
      t.integer :user_id
      t.integer :wear_id
      t.time :clickedtime

      t.timestamps
    end
  end
end
