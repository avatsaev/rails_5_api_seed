class Api::V1::LibraryController < Api::V1::UserApiController
  before_action :set_library
  before_action :set_book, only: [:add_book, :remove_book]

  def show
    render json: current_user.library.books
  end

  def add_book

    @library.add_book @book

  end

  def remove_book

    @library.remove_book @book

  end

  private


  def set_library
    @library = current_user.library
  end


  def set_book
    @book = Book.friendly_id?.find(params[:id])
  end


end
