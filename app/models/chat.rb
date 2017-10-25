class Chat < ApplicationRecord
	belongs_to :user
	has_many :users
	has_one :group
end
