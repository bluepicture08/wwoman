class CreateOfflines < ActiveRecord::Migration
  def change
    create_table :offlines do |t|
      t.string :off_title
      t.text :off_content
      t.text :off_tutor_content
      t.text :off_summary
      t.string :offimage
      t.string :offthumbnail
      t.timestamps null: false
    end
  end
end
