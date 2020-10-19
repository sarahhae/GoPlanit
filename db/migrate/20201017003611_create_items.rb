class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :flight
      t.text :accomodation
      t.text :activity
      t.text :transport
      t.text :insurance
      t.text :misc

      t.timestamps
    end
  end
end
