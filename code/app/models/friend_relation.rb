class FriendRelation < ActiveRecord::Base
  attr_accessible :user_id, :follower_id, :status
  validates :user_id,        presence: true
  validates :follower_id,    presence: true
  validates :status,         presence: true

  belongs_to :user
  belongs_to :follower, :class_name => 'User'

  rails_admin do
    configure :user do
    end

    configure :follower do
    end
  end
end
