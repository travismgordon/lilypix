class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :words
      t.integer :vote
      t.refrences :picture

      t.timestamps null: false
    end
  end
end
