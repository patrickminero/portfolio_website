class MessagesController < ApplicationController
  invisible_captcha only: :create, honeypot: :subtitle
  def new
    @message ||= Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      send_email ContactMailer, :invite, contact: @message
      redirect_to message_path(@message)
    else
      redirect_to new_message_path(@message), alert: @message.errors.full_messages
    end
  end



  private

  def message_params
    params.require(:message).permit(:email, :name, :message)
  end
end
