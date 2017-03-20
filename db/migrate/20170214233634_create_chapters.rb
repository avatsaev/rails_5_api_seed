class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :author
      t.string :contents
      t.string :slug
      t.boolean :is_paid
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
