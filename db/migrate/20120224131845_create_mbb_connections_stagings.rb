class CreateMbbConnectionsStagings < ActiveRecord::Migration
  def change
    create_table :mbb_connections_stagings do |t|
      t.decimal :provider_subscriber_id
      t.string :institution_subscriber_id
      t.date :date_of_birth
      t.string :institution_abbreviation
      t.string :institution_name
      t.date :transaction_date
      t.string :channel_name
      t.string :product_name
      t.integer :institution_id
      t.integer :channel_id
      t.integer :product_id

      t.timestamps
    end
  end
end
