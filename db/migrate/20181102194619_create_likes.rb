class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :offline, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :offline_id
      t.string :user_id
      
      t.timestamps null: false
    end
  end
end
