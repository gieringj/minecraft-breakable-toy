class CreateLists < ActiveRecord::Migration[5.2]
  def change
      create_table :lists do |t|
      t.string :title, null: false
      t.string :familiarity, null: false
      t.string :video_type, null:false
      t.timestamps
      end
  end
end
