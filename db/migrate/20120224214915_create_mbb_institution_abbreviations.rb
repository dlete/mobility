class CreateMbbInstitutionAbbreviations < ActiveRecord::Migration
  def change
    create_table :mbb_institution_abbreviations do |t|
      t.integer :institution_id
      t.string :abbreviation

      t.timestamps
    end
  end
end
