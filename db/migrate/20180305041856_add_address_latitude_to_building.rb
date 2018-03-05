class AddAddressLatitudeToBuilding < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :address_latitude, :float
  end
end
