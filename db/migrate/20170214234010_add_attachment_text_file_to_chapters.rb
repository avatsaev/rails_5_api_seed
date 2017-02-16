class AddAttachmentTextFileToChapters < ActiveRecord::Migration
  def self.up
    change_table :chapters do |t|
      t.attachment :text_file
    end
  end

  def self.down
    remove_attachment :chapters, :text_file
  end
end
