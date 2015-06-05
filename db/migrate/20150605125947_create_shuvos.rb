class CreateShuvos < ActiveRecord::Migration
  def change
    create_table :shuvos do |t|
      t.string :title
      t.text :description
      t.integer :no_followers

      t.timestamps null: false
    end
  end
end
