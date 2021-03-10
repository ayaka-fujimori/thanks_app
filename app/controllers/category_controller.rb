class CategoryController < ApplicationController
  def select_category_index
    @select_category_index1 = Post.where(category_id: 1)
    @select_category_index2 = Post.where(category_id: 2)
    @select_category_index3 = Post.where(category_id: 3)
    @select_category_index4 = Post.where(category_id: 4)

    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    
  end
end
