class CreateLaunchers < ActiveRecord::Migration[7.0]
  def change
    create_table :launchers do |t|
      t.datetime :imported_t
      t.integer :status, default: 0
      t.json :data

      t.timestamps
    end
  end
end
