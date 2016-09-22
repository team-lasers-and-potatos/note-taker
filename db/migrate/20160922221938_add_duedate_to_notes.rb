class AddDuedateToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :duedate, :datetime
  end
end
