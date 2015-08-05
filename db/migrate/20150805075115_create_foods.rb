class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :amount
      t.string :first_date
      t.string :expiration_date
      t.string :status
      t.references :refriger, index: true, foreign_key: true
      t.timestamps
    end
  end
end
