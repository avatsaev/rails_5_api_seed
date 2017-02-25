class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :cover

  has_many :chapters, if: :chapters?
  has_many :tags, if: :tags?


  def chapters?
    @instance_options[:render_params][:chapters]
  end

  def tags?
    @instance_options[:render_params][:tags]
  end

end
