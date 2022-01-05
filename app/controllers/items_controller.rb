class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @category = Category.find(params[:category_id])
    @event = @category.event
    @member = Member.find_by(user_id: current_user, event_id: @event)
    @item.member = @member
    @item.category = @category
    if @item.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity)
  end
end
