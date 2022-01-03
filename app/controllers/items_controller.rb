class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.member = current_user
    @category = Category.find(params[:category_id])
    @item.category = @category
    if @item.save
      redirect_to events_path(@event)
    else
      render "events/show"
    end
  end

  private

  def item_params
    params.require(:items).permit(:name, :quantity)
  end
end
