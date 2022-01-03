class Item < ApplicationRecord
  belongs_to :member
  belongs_to :category
  validates :name, :quantity, presence: true
end
