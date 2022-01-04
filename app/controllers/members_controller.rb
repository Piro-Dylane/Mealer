class MembersController < ApplicationController
  def create
    @member = Member.new(member_params)
    @member.user = current_user
    @event = Event.find(params[:event_id])
    @member.event = @event
    if @member.save!
      redirect_to event_path(@event)
    else
      render 'events/show'
    end
  end

  private
  def member_params
    params.require(:member).permit()
  end
end
