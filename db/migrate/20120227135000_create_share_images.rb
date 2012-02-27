class CreateShareImages < ActiveRecord::Migration
  def self.up
    create_table :share_images do |t|
      t.references :share
      t.string :img_s
      t.string :img_b

      t.timestamps
    end
  end

  def self.down
    drop_table :share_images
  end
end
