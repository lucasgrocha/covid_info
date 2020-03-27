class CreateCovidDailyStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :covid_daily_statuses do |t|
      t.integer :confirmed
      t.integer :recovered
      t.integer :deaths

      t.timestamps
    end
  end
end
