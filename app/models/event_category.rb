class EventCategory < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
