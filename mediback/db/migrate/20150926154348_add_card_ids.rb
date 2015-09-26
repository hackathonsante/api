class AddCardIds < ActiveRecord::Migration
  def change
    add_column :chats, :card, :string
    add_column :users, :card, :string
  end
end
