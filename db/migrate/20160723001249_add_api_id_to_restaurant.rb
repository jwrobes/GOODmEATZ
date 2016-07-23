class AddApiIdToRestaurant < ActiveRecord::Migration[5.0]
  def self.up
    add_column :restaurants, :api_id, :string, :default => false, :null => false
  end

  def self.down
    remove_column :restaurants, :api_id
  end
end
