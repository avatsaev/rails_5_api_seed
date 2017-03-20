class Book < ApplicationRecord

  extend FriendlyId
  acts_as_taggable_on :book_tags

  has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

  has_many :chapters, dependent: :destroy

  friendly_id :title, use: [:slugged, :finders]

  validates_uniqueness_of :title

end
