module AdminApi

  class BooksController < AdminApiController

    before_action :set_book, only: [:show, :update, :destroy]


    def index
      @books = Book.all

      render json: @books
    end


    def show
      render json: @book
    end


    def create
      @book = Book.new(book_params)

      if @book.save
        render json: @book, status: :created, location: @book
      else
        render json: @book.errors, status: :unprocessable_entity
      end

    end


    def update
      if @book.update(book_params)
        render json: @book
      else
        render json: @book.errors, status: :unprocessable_entity
      end
    end


    def destroy
      @book.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.fetch(:book, {})
    end
  end


end


