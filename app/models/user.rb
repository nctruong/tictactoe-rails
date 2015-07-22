class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { within: 4..20 }, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
end
