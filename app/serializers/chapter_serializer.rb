class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :title, :author, :is_paid, :contents

  attribute :tags, key: :tag_list, if: :tags?

  belongs_to :book, if: :book?
  has_many :tags, key: :tag_list, if: :tags?

  def book?
    @instance_options[:render_params].present? && @instance_options[:render_params][:book]
  end

  def tags?
    @instance_options[:render_params].present? && @instance_options[:render_params][:tags]
  end

end
