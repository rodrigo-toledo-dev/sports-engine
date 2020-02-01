class HomeController < ApplicationController
  def index
    @events_group = Event.filter_by_categories(params[:event_categories_ids])
  end
end
