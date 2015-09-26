class UserChatAssociation < ActiveRecord::Migration
  def change
    create_table :chats_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :chat, index: true
    end
  end
end
