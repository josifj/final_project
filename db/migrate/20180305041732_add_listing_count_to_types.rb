class AddListingCountToTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :types, :listings_count, :integer
  end
end
