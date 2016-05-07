class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.timestamps

      has_many :reviews
    end
  end
end
