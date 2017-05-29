class CreateInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :invites do |t|
      t.references :inviter, foreign_key: true
      t.references :invitee, foreign_key: true
      t.references :movie, foreign_key: true
      t.datetime :meet_at
      t.string :location
      t.text :memo

      t.timestamps
    end
  end
end
