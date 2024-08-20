class Vendor < ApplicationRecord
  has_many :vendors_sweets
  has_many :sweets, through: :vendors_sweets

  accepts_nested_attributes_for :sweets, reject_if: proc { |attributes| attributes['name'].blank? }
end
