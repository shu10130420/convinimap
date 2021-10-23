class AddParkingToposts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :parking, :string
  end
end
