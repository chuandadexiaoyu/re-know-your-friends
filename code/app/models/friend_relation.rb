class FriendRelation < ActiveRecord::Base
  attr_accessible :first_id, :second_id, :first_type, :second_type, :status
  validates :first_id,       presence: true
  validates :second_id,      presence: true
  validates :status,         presence: true

  belongs_to :first,     :class_name => 'User'
  belongs_to :second,    :class_name => 'User'

  rails_admin do
    configure :first do
    end

    configure :second do
    end
  end
end
