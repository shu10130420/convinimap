class AddEndToposts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :end, :datetime
  end
end
