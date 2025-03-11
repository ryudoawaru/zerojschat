class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.belongs_to :chat_room
      t.belongs_to :user
      t.timestamps
    end
  end
end
