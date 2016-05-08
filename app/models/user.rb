class User < ActiveRecord::Base
  has_secure_password
<<<<<<< HEAD
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

=======
  has_many :reviews
  has_many :cities, through: :reviews
>>>>>>> 1c0e81c8a9d1de5172d2eb5117b65e873ee2b04c

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end



end
