class AdminApi::ChaptersController < AdminApi::AdminApiController

  before_action :set_book
  before_action :set_chapter, only: [:show, :update, :destroy]


  def index
    @chapters = @book.chapters.all

    render json: @chapters, render_params: params
  end


  def show
    render json: @chapter, render_params: params
  end


  def create

    @chapter = @book.chapters.new(chapter_params)

    if @chapter.save
      render json: @chapter, status: :created,  render_params: params
    else
      render json: @chapter.errors, status: :unprocessable_entity
    end

  end


  def update
    if @chapter.update(chapter_params)
      render json: @chapter,  render_params: params
    else
      render json: @chapter.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @chapter.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.friendly.find(params[:book_id])
  end

  def set_chapter
    @chapter = @book.chapters.friendly.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def chapter_params
    params.require(:chapter).permit(
                                :title,
                                :book_id,
                                :contents,
                                :is_paid,
                                { chapter_tag_list: []}
    )
  end
  
  
end
