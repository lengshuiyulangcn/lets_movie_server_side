class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image_thumb
      t.string :image_middle
      t.string :image_large
      t.text :description
      t.text :casts
      t.text :directors
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
