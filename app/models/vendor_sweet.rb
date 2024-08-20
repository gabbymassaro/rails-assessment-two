class VendorSweet < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :sweet
end