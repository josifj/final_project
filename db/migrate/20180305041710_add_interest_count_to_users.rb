class AddInterestCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :interests_count, :integer
  end
end
