class CreateColours < ActiveRecord::Migration
  def change
    create_table :colours do |t|
      t.string :css_class, limit: 40

      t.timestamps null: false
    end
  end
end
