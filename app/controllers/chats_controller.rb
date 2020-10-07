class ChatsController < ApplicationController

def index
    @chats = Chat.all
  end

  def new
    @chat = Chat.new(permitted_parameters)
  end

  def create
    @chat = Chat.new(permitted_parameters)
    if @chat.save
      flash[:success] = "Room was created successfully"
      redirect_to chats_path
    end
  end

  def show
    @chat = Chat.find(params[:id])
    @chat_message = ChatMessage.new chat: @chat
    @chat_messages = @chat.chat_messages.includes(:user)
  end

  def permitted_parameters
    params.require(:chat).permit(:name)
  end
 end