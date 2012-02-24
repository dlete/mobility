class ChangeInstitutionCategory < ActiveRecord::Migration
  def up
    rename_column :institutions, :category_id, :institution_category_id
  end

  def down
    rename_column :institutions, :institution_category_id, :category_id
  end
end
