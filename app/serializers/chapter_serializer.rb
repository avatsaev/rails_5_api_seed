class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :title, :author, :is_paid, :contents
  belongs_to :book
end
