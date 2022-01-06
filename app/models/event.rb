class Event < ApplicationRecord
  belongs_to :user
  has_many :members
  has_many :categories
  has_one :chatroom
  has_many :suggestions, through: :categories
  has_many :items, through: :categories
  validates :title, length: { minimum: 3, maximum: 30 }
  validates :title, :date, :time, presence: true
  has_one_attached :photo
end
