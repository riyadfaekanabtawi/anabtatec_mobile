class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :post
      t.string :yourname

      t.timestamps
    end
  end
end
