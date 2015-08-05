class CreateRefrigers < ActiveRecord::Migration
  def change
    create_table :refrigers do |t|
      t.string :person
      t.string :location
      t.timestamps
    end
  end
end
