class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname, nil: false
      t.string :wechat_id
      t.string :avatar_url
      t.string :open_id, nil: false
      t.string :session_id

      t.timestamps
    end
    add_index :users, :open_id, unique: true
  end
end
