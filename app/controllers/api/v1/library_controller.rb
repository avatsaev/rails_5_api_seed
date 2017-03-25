class Api::V1::LibraryController < Api::V1::UserApiController
  before_action :set_library
  before_action :set_book, only: [:add_book, :remove_book]



  def show
    render json: current_user.library.books
  end




  def add_book

    is_added =  @library.add_book @book

    render json: {
        book_id: @book.id,
        added: is_added
    }, status: :ok

  end


  def remove_book

    is_removed = @library.remove_book @book
    render json: {
        book_id: @book.id,
        removed: is_removed
    }, status: :ok

  end

  private


  def set_library
    @library = current_user.library
  end


  def set_book
    @book = Book.friendly.find(params[:id])
  end


end
