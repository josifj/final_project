class AddAddressLongitudeToBuilding < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :address_longitude, :float
  end
end
