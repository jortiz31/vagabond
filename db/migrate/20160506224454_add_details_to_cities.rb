class AddDetailsToCities < ActiveRecord::Migration
  def change
    add_column :cities, :country, :string
    add_column :cities, :city_name, :string
  end
end
