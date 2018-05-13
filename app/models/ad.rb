class Ad < ApplicationRecord
  belongs_to :business
  has_many :cars
end
