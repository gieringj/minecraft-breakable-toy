class CreateCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
    t.string :name, null: false
    t.text :description
    t.string :creation_date, null: false
    t.string :youtube_url, null: false
    t.string :rating
    t.belongs_to :video
    end
  end
end
