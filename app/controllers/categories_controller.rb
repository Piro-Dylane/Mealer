class CategoriesController < ApplicationController
  def create
    @category = Category.new(category_params)
    @event = Event.find(params[:event_id])
    @category.event = @event
    if @category.save
      redirect_to events_path(@event)
    else
      render "events/show"
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
