class CreateOnlines < ActiveRecord::Migration
  def change
    create_table :onlines do |t|
      t.string :on_title
      t.text :on_content
      t.text :on_summary
      t.string :onimage
      t.string :onthumbnail
      t.timestamps null: false
    end
  end
end
