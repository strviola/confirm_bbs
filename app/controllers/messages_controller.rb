class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def index
    @messages = Message.all
  end

  def show
  end

  def new
    @message = Message.new
  end

  def edit
  end

  def create
    @message = Message.new(message_params)

    if params[:fix] || !@message.save
      @message.clear_confirmed if params[:fix]
      render :new
    else
      redirect_to @message, notice: 'Message was successfully created.'
    end
  end

  def update
    @message.attributes = message_params

    if params[:fix] || !@message.save
      @message.clear_confirmed if params[:fix]
      render :edit
    else
      redirect_to @message, notice: 'Message was successfully updated.'
    end
  end

  def destroy
    @message.destroy
    redirect_to messages_url, notice: 'Message was successfully destroyed.'
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:body, :confirmed)
  end
end
