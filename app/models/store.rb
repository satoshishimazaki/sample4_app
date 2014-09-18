class Store < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, presence: true, lenght: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :address, presence: true
	validates :tell, presence: true
	validates :url, presence: true
	has_secure_password
	validates :password, length: { minimum: 6 }
end