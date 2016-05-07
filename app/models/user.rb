class User < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :cities, through: :reviews

  has_secure_password

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
