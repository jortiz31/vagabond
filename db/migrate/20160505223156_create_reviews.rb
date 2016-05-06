class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.timestamps

      # t.belongs_to :user
      # t.belongs_to :city
    end
  end
end
