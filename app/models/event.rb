class Event < ApplicationRecord
  belongs_to :event_category
  # validates_with TeamValidator

  def self.filter_by_categories(ids = [])
    events = Event.unscoped
    events = events.where(event_category_id: ids) unless ids.blank?
    events.order(:event_date).group_by(&:event_date)
  end
end
