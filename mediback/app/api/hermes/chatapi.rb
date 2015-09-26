module Hermes
  class Chatapi < Grape::API
    get :chatlist do
      Chat.all
    end
    resource :chat do
      params do
        requires :title, type: String
        requires :kinder, type: Integer
        optional :detail, type: String
      end
      post :create do
        @chat = Chat.new
        @chat.title = params[:title]
        @chat.detail = params[:details]
        @chat.kinder = params[:kinder]
        @chat.save
      end
      get ':id' do
        @c = Chat.find(params[:id])
        {chat: @c, messages: @c.comments}
      end
    end

  
  end
end
