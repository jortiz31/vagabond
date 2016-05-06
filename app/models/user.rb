class User < ActiveRecord::Base
  has_secure_password

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  has_many :reviews, dependent: :destroy
  has_many :cities, through: :reviews

end
