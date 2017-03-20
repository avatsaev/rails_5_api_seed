class UserLibraryBook < ApplicationRecord
  belongs_to :user_library
  belongs_to :book

end
