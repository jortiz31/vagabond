class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.timestamps

      # t.belongs_to :user
      # t.belongs_to :review
    end
  end
end
