class AddAncestryToCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
    add_column :categories, :ancestry, :string
    add_index :categories, :ancestry
  end
end
