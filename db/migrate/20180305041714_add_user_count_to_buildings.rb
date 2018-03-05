class AddUserCountToBuildings < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :users_count, :integer
  end
end
