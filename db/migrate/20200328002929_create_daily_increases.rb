class CreateDailyIncreases < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_increases do |t|
      t.integer :confirmed
      t.integer :recovered
      t.integer :deaths

      t.timestamps
    end
  end
end
