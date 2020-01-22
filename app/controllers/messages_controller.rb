class MessagesController < ApplicationController
  def index
  end

  def create 
    Message.create(message_params)
  end

  def show
  end

  def new
    @message = Message.new
  end
end

private
  def message_params
    params.permit(:message)
  end

# 引数について調べよう