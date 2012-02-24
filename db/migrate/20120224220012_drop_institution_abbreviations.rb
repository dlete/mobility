class DropInstitutionAbbreviations < ActiveRecord::Migration
  def up
    drop_table :institution_abbreviations
  end

  def down
    create_table :institution_abbreviations do |t|
      t.integer :institution_id
      t.string :abbreviation

      t.timestamps
    end
  end
end
