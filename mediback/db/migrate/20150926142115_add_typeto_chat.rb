class AddTypetoChat < ActiveRecord::Migration
  def change
    add_column :chats, :kinder, :integer
  end
end
