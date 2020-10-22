class Tea < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :category, presence: true
end
