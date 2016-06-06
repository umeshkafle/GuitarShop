class Guitar < ActiveRecord::Base
	belongs_to :user
	mount_uploader :image, ImageUploader
	validates :make, presence: true
	validates :guitar_model, presence: true
	validates :colour, presence: true
	validates :selling_price, presence: true
	validates :condition, presence: true
	validates :rack_no, presence: true
	validates :quantity, presence: true
	validates :image, presence: true
	



end
