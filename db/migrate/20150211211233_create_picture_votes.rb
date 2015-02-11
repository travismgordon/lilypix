class CreatePictureVotes < ActiveRecord::Migration
  def change
    create_table :picture_votes do |t|
      t.integer :direction
      t.string :user
      t.references :picture, index: true

      t.timestamps null: false
    end
    add_foreign_key :picture_votes, :pictures
  end
end
