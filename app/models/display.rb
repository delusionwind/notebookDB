class Display < ApplicationRecord
  validates :size, :dtype, :dtouch, presence: true
end
