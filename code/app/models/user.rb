class User < ActiveRecord::Base
  attr_accessible :user_name, :user_email, :user_gender, :user_birthday, :user_avatar, :user_status, :user_confirm 
  validates :user_name,     presence: true
  validates :user_email,    presence: true
  validates :user_gender,   presence: true 
  validates :user_birthday, presence: true
  has_one   :address
  has_many  :friend_relations
  has_many  :followers, through: :friend_relations

  mount_uploader :user_avatar, AvatarUploader

  rails_admin do
  end
end


