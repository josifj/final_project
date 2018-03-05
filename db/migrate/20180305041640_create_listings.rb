class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :type_id
      t.integer :category_id
      t.string :name
      t.text :description
      t.string :price
      t.integer :user_id
      t.string :images
      t.date :purchase_date
      t.string :link
      t.boolean :status

      t.timestamps

    end
  end
end
