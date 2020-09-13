class User < ApplicationRecord
  has_secure_password
  validates :auth_token, uniqueness: true
  validates_presence_of :login
  before_create :generate_authentication_token
  has_one :cart, dependent: :destroy

  def generate_authentication_token
    loop do
      self.auth_token = SecureRandom.base64(64)
      break unless User.find_by(auth_token: auth_token) 
    end
  end
end
