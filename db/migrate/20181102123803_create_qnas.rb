class CreateQnas < ActiveRecord::Migration
  def change
    create_table :qnas do |t|
      t.text :question
      t.string :qna_name
      t.string :qna_phone
      t.timestamps null: false
    end
  end
end
