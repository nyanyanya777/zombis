class AddPhotoToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :photo, :string
  end
end
