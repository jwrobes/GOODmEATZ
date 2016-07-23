class CreateRestaurantMeats < ActiveRecord::Migration[5.0]
  def self.up
    create_table :restaurant_meats do |t|
      t.belongs_to :restaurant, :meat
      t.timestamps
    end
  end
end
