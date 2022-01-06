class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      @chatroom = Chatroom.create(event_id: @event.id)
      @member = Member.create(user: current_user, event: @event)
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def show
    @event = Event.find(params[:id])
    @category = Category.new
    @categories = @event.categories
    @member = Member.new
    @members = @event.members
    @chatroom = @event.chatroom
  end

  def update
    @event = Event.find(params[:id])
    Event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    # destroy record
    @event.destroy

    # redirect to index
    redirect_to event_path
  end

  def event_params
    params.require(:event).permit(:title, :date, :time, :description)
  end
end
