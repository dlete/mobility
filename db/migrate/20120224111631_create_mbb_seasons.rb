class CreateMbbSeasons < ActiveRecord::Migration
  def change
    create_table :mbb_seasons do |t|
      t.date :season_begin
      t.date :season_end

      t.timestamps
    end
  end
end
