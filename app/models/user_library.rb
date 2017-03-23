class UserLibrary < ApplicationRecord
  belongs_to :user
  has_many :user_library_books
  has_many :books, through: :user_library_books


  def remove_book book
    self.user_library_books.find_by_book_id(book.id).destroy
  end

  def add_book book
    self.user_library_books.create(book: book)
  end


end
