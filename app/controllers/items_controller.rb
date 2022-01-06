class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @category = Category.find(params[:category_id])
    @event = @category.event
    @member = Member.find_by(user: current_user.id, event: @event)
    @item.member = @member
    @item.category = @category
    @suggestion = Suggestion.new
    if @item.save
      redirect_to event_path(@event)
    else
      flash[:alert] = "You need to be a member #{@event.title} to bring an item." unless @member
      render "categories/show"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity)
  end
end
