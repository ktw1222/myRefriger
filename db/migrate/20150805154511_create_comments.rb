class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :text
      t.references :post, index: true, foreign_key: true
      t.timestamps
    end
  end
end
