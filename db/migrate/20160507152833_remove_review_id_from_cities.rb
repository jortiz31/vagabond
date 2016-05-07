class RemoveReviewIdFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :review_id, :integer
  end
end
