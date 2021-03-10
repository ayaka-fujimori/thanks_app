class Category < ApplicationRecord
    has_many :posts
    has_many :users

    def posts
        return Post.where(user_id: self.id)
    end

    def users
        return User.find_by(id: self.user_id)
    end

end
