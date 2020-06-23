class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :artwork_id, null: false
      t.string :body, { null: false }, { limit: 500 }
      t.index :user_id
      t.index :artwork_id
      t.timestamps
    end
  end
end
