class RemoveCityFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :city_name, :string
  end
end
