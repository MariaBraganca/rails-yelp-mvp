class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :destroy

	CAT = %w(chinese italian japanese french belgian)
	
	validates :name, presence: true
	validates :address, presence: true
	validates :category, presence: true, inclusion: { in: CAT,
		message: "%{value} is not a valid category" }
	validates :phone_number, presence: true
end
