class Osystem < ApplicationRecord
  validates :ostype, :osver, presence: true
end
