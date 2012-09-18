class CreateGiveaways < ActiveRecord::Migration
  def change
    create_table :giveaways do |t|
      t.string :title
      t.datetime :end_date

      t.timestamps
    end
  end
end
