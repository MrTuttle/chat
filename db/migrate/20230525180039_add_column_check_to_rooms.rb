class AddColumnCheckToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :check, :boolean, default: false
  end
end
