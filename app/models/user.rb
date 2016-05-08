class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews, dependent: :destroy


  validates :username,
            uniqueness: true,
            presence: true,
            length: { minimum: 5, maximum: 25 }

  validates :current_city,
            presence: true,
            length: { minimum: 5, maximum: 25 }

  validates :password,
            presence: true,
            length: { minimum: 8 }

  validates :email,
            uniqueness: true,
            presence: true,
            format: {with: /[@]/, message: "invalid email"},
            length: { minimum: 10, maximum: 50 }


  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end



end
