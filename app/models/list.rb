class List < ApplicationRecord
    validates :title, :familiarity, :type, presence: true
end