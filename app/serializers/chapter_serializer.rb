class ChapterSerializer < ActiveModel::Serializer
  attributes  :book_id, :title, :is_paid, :contents
  attribute :slug, key: :id

  attribute :chapter_tag_list, if: :tags?

  belongs_to :book, if: :book?
  has_many :chapter_tag_list,  if: :tags?

  def book?
    @instance_options[:render_params].present? && @instance_options[:render_params][:book]
  end

  def tags?
    @instance_options[:render_params].present? && @instance_options[:render_params][:tags]
  end

end
