class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :username
      t.string :image
      t.datetime :created_at
      t.references :group, foreign_key: true
      t.references :chat, foreign_key: true


      t.timestamps
    end
  end
end
