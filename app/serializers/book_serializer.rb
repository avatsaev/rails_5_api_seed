class BookSerializer < ActiveModel::Serializer
  attributes  :title, :description, :author
  attribute :slug, key: :id
  attribute :chapter_ids
  has_many :chapters, if: :chapters?
  has_many :book_tag_list, if: :tags?


  def chapters?
    @instance_options[:render_params].present? && @instance_options[:render_params][:chapters]
  end

  def tags?
    @instance_options[:render_params].present? && @instance_options[:render_params][:tags]
  end

  def chapter_ids
    object.chapters.order(:created_at).each.map(&:id)
  end

end