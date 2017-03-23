class UserLibraryBook < ApplicationRecord
  belongs_to :user_library
  belongs_to :book

  validates_uniqueness_of :book_id

end
