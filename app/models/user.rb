class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :password, length: {minimum: 6}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 4}
  enum role: {admin: 0, user: 1}
  has_many :favorites
  has_many :favorite_wears, through: :favorites, source: 'wear'

end
