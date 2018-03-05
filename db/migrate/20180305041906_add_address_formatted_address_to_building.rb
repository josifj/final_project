class AddAddressFormattedAddressToBuilding < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :address_formatted_address, :string
  end
end
