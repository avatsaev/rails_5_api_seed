class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :author
      t.boolean :is_paid

      t.timestamps
    end
  end
end
