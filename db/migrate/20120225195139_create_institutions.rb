class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :abbreviation
      t.string :name
      t.integer :institution_category_id

      t.timestamps
    end
  end
end
