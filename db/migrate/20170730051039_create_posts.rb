class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :gadget
      t.text :body
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end
