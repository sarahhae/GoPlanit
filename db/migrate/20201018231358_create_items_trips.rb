class CreateItemsTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :items_trips, :id => false do |t|
      t.integer :item_id
      t.integer :trip_id
    end
  end
end
