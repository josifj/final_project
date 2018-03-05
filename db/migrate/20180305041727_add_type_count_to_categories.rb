class AddTypeCountToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :types_count, :integer
  end
end
