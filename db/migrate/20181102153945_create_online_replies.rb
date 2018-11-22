class CreateOnlineReplies < ActiveRecord::Migration
  def change
    create_table :online_replies do |t|
      t.text :content
      t.belongs_to :online
      t.timestamps null: false
    end
  end
end
