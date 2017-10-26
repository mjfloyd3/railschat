module Application
class User < ApplicationRecord
	has_many :chats
	has_many :groups
	has_many :messages
end
end


class User < ActiveRecord::Base
  

  validates :password, :presence => true
  validates :password, :length => { :in => 2..200}
  validates :name, :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /@/, :message => " is invalid" }

	def self.authenticate(email, test_password)
  user = User.find_by_email(email)
  if user && user.password == test_password
    user
  else
    nil
  end
	end


end
