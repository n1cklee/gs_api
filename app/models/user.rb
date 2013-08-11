class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :recoverable, :confirmable,
  # :rememberable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :token_authenticatable, :trackable, :validatable
  has_many :reviews
end
