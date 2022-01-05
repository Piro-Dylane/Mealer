class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @event = Event.find(params[:event_id])
    @messages = @chatroom.messages
  end
end
