class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.string :name
      t.string :image
      t.datetime :created_at
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
