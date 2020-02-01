class Event < ApplicationRecord
  belongs_to :event_category
  validates_with TeamValidator

  def self.filter_by_categories(event_categories_ids = [])
    events = Event.order(:event_date)
    events = events.where(event_category_id: event_categories_ids) unless event_categories_ids.blank?
    events.group_by(&:event_date)
  end
end
