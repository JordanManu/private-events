class AddingCreatorColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :creator, :integer
  end
end
