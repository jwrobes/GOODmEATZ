class CreateRestaurantSources < ActiveRecord::Migration[5.0]
  def self.up
    create_table :restaurant_sources do |t|
      t.belongs_to :restaurant, :source
      t.timestamps
    end
  end
end
