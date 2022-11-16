class Creators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
    t.string :channel_name, null: false
    t.text :channel_description
    t.string :channel_creation_date, null: false
    t.string :channel_url, null: false
    t.string :channel_rating
    t.belongs_to :video
    end
  end
end
