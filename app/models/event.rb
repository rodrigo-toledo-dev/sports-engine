class Event < ApplicationRecord
  belongs_to :event_category
  # validates_with TeamValidator

  def self.filter_by_categories(event_category_ids = [])
    events = Event.unscoped
    events = events.where(event_category_id: event_category_ids) unless event_category_ids.blank?
    events.order(:event_date).group_by {|event| event.event_date}
  end
end
