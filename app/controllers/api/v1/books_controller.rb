module Api::V1

  class BooksController <  ApiController


    def index
      render json: Book.all, render_params: params
    end


    def featured
      render json: Book.first, render_params: params
    end


    def recent
      render json: Book.first(2), render_params: params
    end


    def popular
      render json: Book.first(3), render_params: params
    end

  end

end
