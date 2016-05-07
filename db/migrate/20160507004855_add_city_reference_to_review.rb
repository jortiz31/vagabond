class AddCityReferenceToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :city, index: true, foreign_key: true
  end
end
