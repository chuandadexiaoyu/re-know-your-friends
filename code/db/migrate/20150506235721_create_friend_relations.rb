class CreateFriendRelations < ActiveRecord::Migration
  def change
    create_table :friend_relations do |t|
      t.integer    :first_id
      t.integer    :second_id
      t.string     :first_type
      t.string     :second_type
      t.string     :status

      t.timestamps null: false
    end
  end
end
