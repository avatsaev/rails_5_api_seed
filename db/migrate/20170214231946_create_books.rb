class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.boolean :is_paid, default: true
      t.string :author
      t.string :slug

      t.timestamps
    end
  end
end
