class AddReviewToCity < ActiveRecord::Migration
  def change
    add_reference :cities, :review, index: true, foreign_key: true
  end
end
