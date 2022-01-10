class SuggestionsController < ApplicationController

  def create
    @suggestion = Suggestion.new(suggestion_params)
    @category = Category.find(params[:category_id])
    @suggestion.category = @category
    @event = @category.event
    if @suggestion.save
      redirect_to event_category_path(@event, @category)
    else
      render "category/show"
    end
  end

  def update
    @suggestion = Suggestion.find(params[:id])
    @suggestion.update(suggestion_params)
  end

  def vote
    @suggestion = Suggestion.find(params[:id])
    @suggestion.vote += 1
    @category = @suggestion.category
    @event = @category.event
    if @suggestion.save
      redirect_to event_category_path(@event, @category)
    else
      render 'show/category'
    end
  end

  def downvote
    @suggestion = Suggestion.find(params[:id])
    @suggestion.downvote += 1
    @category = @suggestion.category
    @event = @category.event
    if @suggestion.save
      redirect_to event_category_path(@event, @category)
    else
      render 'show/category'
    end
  end

  private

  def suggestion_params
    params.require(:suggestion).permit(:name, :vote, :downvote)
  end
end
