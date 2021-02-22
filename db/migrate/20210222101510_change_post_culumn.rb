class ChangePostCulumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :category, :string
    add_column :posts, :category_id, :integer
  end
end
