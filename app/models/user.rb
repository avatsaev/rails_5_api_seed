class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :recoverable,
         :trackable, :validatable, :registerable,
         :omniauthable

  include DeviseTokenAuth::Concerns::User

  has_many :books, through: :user_library_books

end
