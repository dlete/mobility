class CreateMbbProducts < ActiveRecord::Migration
  def change
    create_table :mbb_products do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
