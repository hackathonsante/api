class ChatsController < ApplicationController
  def new
    @chat = Chat.new
  end

  def index
    @chats = Chat.all
  end

  def create
    @chat = Chat.new chat_params

    @chat.save
    redirect_to @chat
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def update
    @chat = Chat.find(params[:id])
    logger.debug 'here'
    if @chat.update(chat_params)
      redirect_to @chat
    else
      render 'edit'
    end
  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy

    redirect_to chats_path
  end

  private
  def chat_params
    params.require(:chat).permit(:title, :detail)
  end

end
