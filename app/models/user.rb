class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable,
         :recoverable,
         :trackable,
         :validatable,
         :registerable,
         :omniauthable

  include DeviseTokenAuth::Concerns::User

  has_one :library, class_name: 'UserLibrary'

  after_create :create_user_library

  private

  def create_user_library
    UserLibrary.create(user: self)
  end

end
