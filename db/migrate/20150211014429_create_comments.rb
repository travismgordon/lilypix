class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :words
      t.integer :vote
      t.references :picture, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :pictures
  end
end
