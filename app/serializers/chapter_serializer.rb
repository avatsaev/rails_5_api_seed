class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :is_paid, :text_file
  belongs_to :book
end
