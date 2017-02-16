class AddBookIdToChapters < ActiveRecord::Migration[5.0]
  def change
    add_column :chapters, :book_id, :integer
  end
end
