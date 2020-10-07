class ChatMessagesController < ApplicationController
  before_action :load_chat
  
  def create
    @chat_message = ChatMessage.create user: current_user,
                                       chat: @chat,
                                       message: params.dig(:chat_message, :message)
    # if @chat_message.save
    #   flash[:success] = "mess was send successfully"
    #   redirect_to "/chats/1"
    # end

   ChatChannel.broadcast_to @chat, @chat_message
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def load_chat
  	@chat = Chat.last
  end
end
