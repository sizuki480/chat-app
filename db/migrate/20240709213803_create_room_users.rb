class CreateRoomUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :room_users do |t|
      t.references :room, null: false, foreign_key: true    #| room   | references | null: false, foreign_key: true |
      t.references :user, null: false, foreign_key: true    #| user   | references | null: false, foreign_key: true |
      t.timestamps
    end
  end
end
