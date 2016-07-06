class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.text :summary

      t.timestamps null: false
    end
  end
end
