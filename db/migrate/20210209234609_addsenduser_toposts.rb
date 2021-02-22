class AddsenduserToposts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :senduser, :string
  end
end
