class User < ActiveRecord::Base
	has_many :profiles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :skype_id
  validates :name, presence: true,length: { maximum: 20, message: "*Please fill name within 20 cahracter" }, format: { with: /\A[a-zA-z]+\z/,
    message: "Please only use character" }
  validates :skype_id, presence: true

end
