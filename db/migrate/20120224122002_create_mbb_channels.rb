class CreateMbbChannels < ActiveRecord::Migration
  def change
    create_table :mbb_channels do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
