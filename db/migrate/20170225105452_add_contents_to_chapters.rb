class AddContentsToChapters < ActiveRecord::Migration[5.0]
  def change
    add_column :chapters, :contents, :text
  end
end
