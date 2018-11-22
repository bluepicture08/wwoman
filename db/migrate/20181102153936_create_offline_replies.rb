class CreateOfflineReplies < ActiveRecord::Migration
  def change
    create_table :offline_replies do |t|
      t.text :content
      t.integer :offline_id
      t.timestamps null: false
    end
  end
end
