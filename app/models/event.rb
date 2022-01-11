class Event < ApplicationRecord
  belongs_to :user
  has_many :members
  has_many :categories, dependent: :destroy
  has_one :chatroom, dependent: :destroy
  has_many :suggestions, through: :categories, dependent: :destroy
  has_many :items, through: :categories, dependent: :destroy
  validates :title, length: { minimum: 3, maximum: 30 }
  validates :title, :date, :time, presence: true
  has_one_attached :photo
end
