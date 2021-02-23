class Post < ApplicationRecord
    validates :content, {presence: true, length: {maximum: 140}}
    validates :user_id, {presence: true}
    
    belongs_to :category
    belongs_to :user, class_name: "User"
    belongs_to :send_user, class_name: "User"

    def user
        return User.find_by(id: self.user_id)
    end

end
