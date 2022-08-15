class AddImportedIdToLaunchers < ActiveRecord::Migration[7.0]
  def change
    add_column :launchers, :imported_id, :text
  end
end
