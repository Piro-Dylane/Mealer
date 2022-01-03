class Category < ApplicationRecord
  belongs_to :event
  has_many :suggestions
  has_many :items
  validates :name, presence: true, uniqueness: true
end
