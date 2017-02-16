class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :cover
  has_many :chapters

end