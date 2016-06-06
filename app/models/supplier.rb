class Supplier < ActiveRecord::Base
	validates :guitar_name, presence: true
	validates :supplier_name, presence: true
	validates :supplier_address, presence: true
	validates :purchased_date, presence: true
	validates :delivery_date, presence: true
	validates :quantity, presence: true
	validates :price, presence: true
	validates :category, presence: true
end
