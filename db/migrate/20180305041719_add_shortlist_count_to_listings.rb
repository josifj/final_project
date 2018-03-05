class AddShortlistCountToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :shortlists_count, :integer
  end
end
