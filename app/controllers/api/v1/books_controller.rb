module Api::V1

  class BooksController <  ApiController


    def index
      render json: Book.all
    end

  end

end
