class User < ApplicationRecord
  has_secure_password

  validates:name,{presence:true}
  validates:email,{presence:true, uniqueness:true}
  validates :password, {presence: true}
  validates :introduction, presence: false, length: { maximum: 50 }

  has_many :posts, dependent: :destroy

  def posts
    return Post.where(user_id: self.id)
  end

end
