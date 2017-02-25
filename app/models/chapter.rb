class Chapter < ApplicationRecord

  belongs_to :book
  acts_as_taggable
  has_attached_file :text_file
  validates_attachment :text_file,
                       content_type: { content_type: "text/html" }

end
