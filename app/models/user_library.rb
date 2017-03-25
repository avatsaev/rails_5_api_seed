class UserLibrary < ApplicationRecord
  belongs_to :user
  has_many :user_library_books
  has_many :books, through: :user_library_books


  def remove_book book
    if self.user_library_books.find_by_book_id(book.id)&.destroy
      true
    else
      false
    end

  end

  def add_book book
    if self.user_library_books.find_by_book_id(book).nil?
      self.user_library_books.create(book: book)
      true
    else
      false
    end
  end


end
