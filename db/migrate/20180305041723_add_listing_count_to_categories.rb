class AddListingCountToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :listings_count, :integer
  end
end
