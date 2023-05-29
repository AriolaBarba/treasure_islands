class CreateIslands < ActiveRecord::Migration[7.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :description
      t.string :location
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
