class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

EMAIL_REGEX = /([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})/i

  validates :login, uniqueness: true, presence: true, length: { maximum: 10 }
  validates :email, format: {with: EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6, maximum: 25 }

end
