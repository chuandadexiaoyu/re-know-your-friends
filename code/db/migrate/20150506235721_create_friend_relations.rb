class CreateFriendRelations < ActiveRecord::Migration
  def change
    create_table :friend_relations do |t|
      t.integer    :user_id
      t.integer    :follower_id
      t.string     :status

      t.timestamps null: false
    end
  end
end
