class Category < ApplicationRecord
  CATEGORIES = ["Drinks", "Starters", "Dishes", "Deserts", "Snacks"]

  belongs_to :event
  has_many :suggestions, dependent: :destroy
  has_many :items

  validates :name, presence: true, uniqueness: { scope: :event_id }
end
