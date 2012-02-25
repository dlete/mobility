class DropClients < ActiveRecord::Migration
  def up
    drop_table :clients
  end

  def down
    create_table :clients do |t|
      t.string :abbreviation
      t.string :name
      t.integer :institution_category_id

      t.timestamps
    end
  end
end
