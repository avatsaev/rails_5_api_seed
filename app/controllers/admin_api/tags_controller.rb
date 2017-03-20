class AdminApi::TagsController < AdminApi::AdminApiController

  def most_used_for_books
    limit = params[:limit] || 10
    render json: ActsAsTaggableOn::Tag.most_used(limit)
  end


  def most_used_for_chapters
    limit = params[:limit] || 10
    render json: ActsAsTaggableOn::Tag.most_used(limit)
  end

end
