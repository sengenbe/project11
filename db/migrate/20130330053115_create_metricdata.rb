class CreateMetricdata < ActiveRecord::Migration
  def change
    create_table :metricdata do |t|
      t.string :name
      t.integer :value
      t.timestamp :adddate

      t.timestamps
    end
  end
end
