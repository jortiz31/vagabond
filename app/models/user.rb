class User < ActiveRecord::Base

  has_secure_password

has_many : city_reviews
has_many :cities, through: : city_reviews

def self.confirm(params)
  @user = User.find_by({email: params[:email]})
  @user.try(:authenticate, params[:password])
end
