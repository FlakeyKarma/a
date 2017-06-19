class AddBodyToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :body, :text
  end
end
