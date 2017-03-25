class AddCurrentChapterIdToUserLibraryBooks < ActiveRecord::Migration[5.0]
  def change

    add_reference :user_library_books, :current_chapter, foreign_key: { to_table: :chapters }
  end
end
