class ChatMessagesController < ApplicationController
  before_action :load_chat
  
  def create
    
    @chat_message = ChatMessage.create user: current_user,
                                       chat: @chat,
                                       message: params.dig(:chat_message, :message)
    respond_to do |format|
      format.js
    end

   ChatChannel.broadcast_to @chat, @chat_message
  end

  def show
    @chat = Chat.includes(:recipient).find(params[:id])
  end

  def load_chat
  	@chat = Chat.last
  end
end