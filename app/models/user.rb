class User < ApplicationRecord
  # validate
  validates :name, presence: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :dob, presence: true
  validates :phone, presence: true
end
