class ChangePostColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :senduser, :string
    add_column :posts, :send_user_id, :integer
    add_foreign_key :posts, :users, column: :send_user_id
  end
end
