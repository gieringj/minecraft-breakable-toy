class Creator < ApplicationRecord
    validates :name, :creation_date, :youtube_url, presence: true
    # validates :description, :rating
end