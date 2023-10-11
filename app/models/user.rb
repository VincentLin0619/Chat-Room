class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true, uniqeness: true, length: { maximum: 20 }
end
