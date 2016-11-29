class Word < ApplicationRecord
  belongs_to :category
  validates :english, presence: true, uniqueness: { case_sensitive: false }
  validates :spanish, presence: true
  validates :category_id, presence: true
end
