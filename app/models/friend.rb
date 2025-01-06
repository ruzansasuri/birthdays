class Friend < ApplicationRecord
  validates :name, presence: true
  validates :birthday, presence: true
end
