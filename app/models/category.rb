class Category < ApplicationRecord
    has_many :words
    validates :name, presence: true, uniqueness: { case_sensitive: false }
end
