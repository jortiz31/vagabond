class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :current_city
      t.string :password_digest

      t.timestamps null: false

      has_many :reviews

    end
  end
end
