class Videos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.text :description
      t.string :upload_date, null: false
      t.string :url, null: false
      t.string :rating
      t.string :familiarity
      t.string :type
      t.belongs_to :creator
      t.belongs_to :list
    end
  end
end
