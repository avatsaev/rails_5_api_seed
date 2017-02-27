class AdminApi::TagsController < AdminApi::AdminApiController

  def most_used
    limit = params[:limit] || 10
    render json: ActsAsTaggableOn::Tag.most_used(limit)
  end
end
