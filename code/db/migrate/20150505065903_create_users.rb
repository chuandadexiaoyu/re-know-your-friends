class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :user_name,    :limit   => 20,  :comment => '用户名字'
      t.string   :user_gender,  :limit   => 2,   :comment => '用户性别' 
      t.date     :user_birthday,                 :comment => '用户生日'
      t.string   :user_avatar,   :limit   => 45,  :comment => '用户照片'
      t.string   :user_status,  :limit   => 1,   :comment => '用户状态，I（在线），O（离线），U（没有认证通过）'
      t.string   :user_confirm, :limit   => 40,  :comment => '注册后生成发给用户邮箱用以确认'
      t.timestamps null: false
    end
  end
end
