class Disk < ApplicationRecord
  validates :dhdd, :dssd, presence: true
end
