class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password
  validates_presence_of :password_confirmation
  validates_presence_of :account_balance

  has_secure_password

end
