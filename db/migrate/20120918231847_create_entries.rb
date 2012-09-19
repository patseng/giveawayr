class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :giveaway_id
      t.integer :points

      t.timestamps
    end
  end
end
