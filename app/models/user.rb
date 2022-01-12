class User < ApplicationRecord
  has_many :events, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
