class CreateInstitutionAbbreviations < ActiveRecord::Migration
  def change
    create_table :institution_abbreviations do |t|
      t.integer :institution_id
      t.string :abbreviation

      t.timestamps
    end
  end
end
