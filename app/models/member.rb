class Member < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :items, dependent: :destroy
  validates :user, presence: true, uniqueness: { scope: :event_id }
  after_create :send_welcomeevent_email

  private

  def send_welcomeevent_email
    MemberMailer.with(user: self.user, event: self.event).send_welcomeevent_email.deliver_now
  end
end
