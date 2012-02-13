class CreateMbbConnections < ActiveRecord::Migration
  def change
    create_table :mbb_connections do |t|
      t.decimal :provider_subscriber_id
      t.string :institution_subscriber_id
      t.date :date_of_birth
      t.string :institution_abbreviation
      t.string :institution_name
      t.date :transaction_date
      t.string :channel_name
      t.string :product_name

      t.timestamps
    end
  end
end
