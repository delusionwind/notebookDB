class Sell < ApplicationRecord
  validates :price, :model, presence: true
end
