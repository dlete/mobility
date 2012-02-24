class DropInstitutions < ActiveRecord::Migration
  def up
    drop_table :institutions
  end

  def down
    create_table :institutions do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
