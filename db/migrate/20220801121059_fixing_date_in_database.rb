class FixingDateInDatabase < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :event_date, :datetime
  end
end
