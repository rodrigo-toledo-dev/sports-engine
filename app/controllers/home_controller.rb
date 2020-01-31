class HomeController < ApplicationController
  def index
    @events_group = Event.unscoped
    unless params[:event_categories_ids].blank?
      @events_group = @events_group.where(category_id: params[:event_categories_ids])
    end
  end
end
