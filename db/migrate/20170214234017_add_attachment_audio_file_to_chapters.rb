class AddAttachmentAudioFileToChapters < ActiveRecord::Migration
  def self.up
    change_table :chapters do |t|
      t.attachment :audio_file
    end
  end

  def self.down
    remove_attachment :chapters, :audio_file
  end
end
