class Member < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :items
  validates :user, presence: true, uniqueness: { scope: :event_id }
end
