class HomeController < ApplicationController
  def index
    @events_group = Event.filter_by_categories(params[:event_category_ids])
  end
end
