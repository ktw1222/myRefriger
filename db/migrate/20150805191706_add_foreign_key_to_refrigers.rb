class AddForeignKeyToRefrigers < ActiveRecord::Migration
  def change
    add_column :refrigers, :user_id, :integer
  end
end
