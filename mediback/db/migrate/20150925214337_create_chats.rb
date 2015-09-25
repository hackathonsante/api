class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.String :Title
      t.String :Comments

      t.timestamps null: false
    end
  end
end
