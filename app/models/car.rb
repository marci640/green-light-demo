class Car < ApplicationRecord
  belongs_to :driver
  belongs_to :ad, optional: true
end
