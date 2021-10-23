class AddToiletToposts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :toilet, :string
  end
end
