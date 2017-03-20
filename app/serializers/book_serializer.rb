class BookSerializer < ActiveModel::Serializer
  attributes  :title, :description, :author
  attribute :slug, key: :id

  has_many :chapters, if: :chapters?
  has_many :book_tag_list, if: :tags?


  def chapters?
    @instance_options[:render_params].present? && @instance_options[:render_params][:chapters]
  end

  def tags?
    @instance_options[:render_params].present? && @instance_options[:render_params][:tags]
  end

end