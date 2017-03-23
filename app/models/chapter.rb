class Chapter < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  belongs_to :book
  acts_as_taggable_on :chapter_tags

  validates :title, :contents, presence: true

end
