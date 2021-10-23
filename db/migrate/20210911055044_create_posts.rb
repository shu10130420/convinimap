class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :store_name
      t.string :address

      t.timestamps
    end
  end
end
