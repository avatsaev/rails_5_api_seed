class CreateUserLibraryBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_library_books do |t|
      t.references :user_library, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
