class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string  :email
      t.string  :password
      t.string  :nick_name
      t.string  :real_name
      t.integer :sex
      t.date    :birthdat   

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
