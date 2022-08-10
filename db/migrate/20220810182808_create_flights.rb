class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :imported_t
      t.text :status
      t.json :data

      t.timestamps
    end
  end
end
