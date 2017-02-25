class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :title, :author, :is_paid, :contents
  belongs_to :book, if: :book?
  has_many :tags, if: :tags?

  def book?
    @instance_options[:render_params][:book]
  end

  def tags?
    @instance_options[:render_params][:tags]
  end

end
