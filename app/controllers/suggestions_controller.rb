class SuggestionsController < ApplicationController
  

def create
  @suggestion = Suggestion.new(suggestion_params)
  @category = Category.find(params[:category_id])
  @suggestion.category = @category
  if @suggestion.save
    redirect_to events_path(@event)
  else
    render "events/show"
  end
end

def update
  if @suggestions.save
    redirect_to suggestions_path(@suggestions)
  else
    render 'create'
  end
end

  private

def suggestion_params
  params.require(:suggestion).permit(:name, :vote)
end

end
