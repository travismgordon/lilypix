class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :caption
      t.string :url
      t.integer :vote
      t.boolean :hot

      t.timestamps null: false
    end
  end
end
