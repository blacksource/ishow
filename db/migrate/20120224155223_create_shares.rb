class CreateShares < ActiveRecord::Migration
  def self.up
    create_table :shares do |t|
      t.references :user
      t.references :product
      t.string :title
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :shares
  end
end
