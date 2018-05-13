class Driver < ApplicationRecord
  has_secure_password
  has_one :car
end
