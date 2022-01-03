class SuggestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def create
    @suggestions = Suggestion.new(params[:id])
  end

  def update
    if @suggestions.save
      redirect_to suggestions_path(@suggestions)
    else
      render 'create'
    end
  end
end
