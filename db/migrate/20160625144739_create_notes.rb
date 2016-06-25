class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.references :colour, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
