class AddBriefToChatRooms < ActiveRecord::Migration[8.0]
  def change
    add_column :chat_rooms, :brief, :text
  end
end
