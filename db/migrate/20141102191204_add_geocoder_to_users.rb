class AddGeocoderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :street_address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
