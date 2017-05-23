class Cpu < ApplicationRecord
  validates :cbrand, :cgen, :cfreq, presence: true
end
