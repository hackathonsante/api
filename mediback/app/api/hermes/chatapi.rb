module Hermes
  class Chatapi < Grape::API
    get :chatlist do
      Chat.all
    end
    resource :chat do
      get ':id' do
        @c = Chat.find(params[:id])
        {chat: @c, messages: @c.comments}
      end
    end
  end
end
