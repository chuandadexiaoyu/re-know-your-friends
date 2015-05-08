class Address < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, presence: true
  validates :user_id, presence: true
  belongs_to :user

  rails_admin do
    configure :user do
    end
  end

end
