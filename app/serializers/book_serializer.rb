class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author

  has_many :chapters, if: :chapters?
  has_many :tags, key: :tag_list, if: :tags?


  def chapters?
    @instance_options[:render_params].present? && @instance_options[:render_params][:chapters]
  end

  def tags?
    @instance_options[:render_params].present? && @instance_options[:render_params][:tags]
  end

end