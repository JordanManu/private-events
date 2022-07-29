class AddingCreatorForeignKeyToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :creator, null: false, foreign_key: true
  end
end
