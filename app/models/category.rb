class Category < ApplicationRecord
  CATEGORIES = ["Drinks", "Starters", "Main dishes", "Deserts", "Snacks"]

  belongs_to :event
  has_many :suggestions
  has_many :items
  validates :name, presence: true
end
