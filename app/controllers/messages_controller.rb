class MessagesController < ApplicationController
  def new
    @message ||= Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      send_email ContactMailer, :invite, contact: @message
      redirect_to new_message_path(@message), alert: ['Message sent correctly']
    else
      redirect_to new_message_path(@message), alert: @message.errors.full_messages
    end
  end



  private

  def message_params
    params.require(:message).permit(:email, :name, :message)
  end
end
