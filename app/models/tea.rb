class Tea < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :category, presence: true
  validates :description, presence: true
end
