class Chat < ApplicationRecord
	belongs_to :user
	has_many :users
	has_one :group
	has_many :messages
end
