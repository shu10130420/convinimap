class AddStartToposts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :start, :datetime
  end
end
