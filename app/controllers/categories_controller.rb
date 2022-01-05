class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @event = Event.find(params[:event_id])
    # @event = @category.event
    @suggestion = Suggestion.new
    @suggestions = @category.suggestions
  end

  def create
    @category = Category.new(category_params)
    @event = Event.find(params[:event_id])
    @category.event = @event
    if @category.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
