class CreateArtworkShares < ActiveRecord::Migration[6.0]
  def change
    create_table :artwork_shares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false
      t.index [:artwork_id, :viewer_id], unique: true
      t.index :artwork_id
      t.index :viewer_id
      t.timestamps 
    end
  end
end
