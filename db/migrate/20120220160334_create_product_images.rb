class CreateProductImages < ActiveRecord::Migration
  def self.up
    create_table :product_images do |t|
      t.references :product
      t.string :url_s
      t.string :url_b


      t.timestamps
    end
  end

  def self.down
    drop_table :product_images
  end
end
