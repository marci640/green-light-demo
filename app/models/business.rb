class Business < ApplicationRecord
  has_secure_password
  has_one :ad
end
