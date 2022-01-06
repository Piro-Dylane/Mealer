class Item < ApplicationRecord
  belongs_to :member
  belongs_to :category
  validates :name, presence: true
  validates :quantity, presence: true
end
