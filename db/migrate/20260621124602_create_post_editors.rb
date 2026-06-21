class CreatePostEditors < ActiveRecord::Migration[8.1]
  def change
    create_table :post_editors do |t|
      t.integer :post_id
      t.integer :editor_id

      t.timestamps
    end
  end
end
