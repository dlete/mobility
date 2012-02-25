class CreateMbbProductDataUsages < ActiveRecord::Migration
  def change
    create_table :mbb_product_data_usages do |t|
      t.date :period_begin
      t.date :period_end
      t.references :mbb_product
      t.decimal :commercial
      t.decimal :heanet

      t.timestamps
    end
    add_index :mbb_product_data_usages, :mbb_product_id
  end
end
