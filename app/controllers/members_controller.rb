class MembersController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @member = Member.new(user: current_user, event: @event)
    @member.event = @event
    if @member.save
      redirect_to event_path(@event), notice: "You've just joined #{@event.title}."
    else
      @category = Category.new
      @categories = @event.categories
      @member = Member.new
      @chatroom = @event.chatroom
      flash[:alert] = "You are already a member of #{@event.title}."
      render 'events/show'
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @member = Member.find_by(user: current_user.id, event: @event)
    @member.destroy
    if @member.destroy
      redirect_to event_path(@event), alert: "You've just left #{@event.title}."
    end
  end
end
