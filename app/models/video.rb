class Video < ApplicationRecord
    validates :description, :rating, :familiarity, :type, presence: false
    validates :title, :upload_date, :url, presence: true
end