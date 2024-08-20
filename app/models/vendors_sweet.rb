class VendorsSweet < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :sweet

  has_many :comments
  accepts_nested_attributes_for :comments
end