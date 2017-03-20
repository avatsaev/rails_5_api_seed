class UserLibrary < ApplicationRecord
  belongs_to :user
  has_many :books, through: :user_library_books
end
