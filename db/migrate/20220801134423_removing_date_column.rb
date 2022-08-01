class RemovingDateColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :event_date
  end
end
