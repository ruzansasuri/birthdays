class Friend < ApplicationRecord
  has_rich_text :description
  validates :name, presence: true
  validates :birthday, presence: true
end
