class AddTimestampsToArtwork < ActiveRecord::Migration[6.0]
  def change
    change_table :artworks do |t|
      t.timestamps
    end
  end
end
