class CreateInstitutionCategories < ActiveRecord::Migration
  def change
    create_table :institution_categories do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
