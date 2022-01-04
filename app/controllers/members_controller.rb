class MembersController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @member = Member.new(user: current_user, event: @event)
    @member.event = @event
    if @member.save!
      redirect_to event_path(@event)
    else
      render 'events/show'
    end
  end
end
