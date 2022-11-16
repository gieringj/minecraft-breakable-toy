class Categorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizations do |t|
    t.string :video_id
    t.string :category_id
    end
  end
end
