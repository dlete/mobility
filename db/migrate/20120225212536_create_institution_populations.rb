class CreateInstitutionPopulations < ActiveRecord::Migration
  def change
    create_table :institution_populations do |t|
      t.integer :academic_year
      t.references :institution
      t.integer :staff
      t.integer :enrollments

      t.timestamps
    end
    add_index :institution_populations, :institution_id
  end
end
