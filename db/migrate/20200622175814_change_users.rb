class ChangeUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :users
    create_table :users do |t|
      t.string :username, null: false, index: { unique: true }
    end
  end
end
