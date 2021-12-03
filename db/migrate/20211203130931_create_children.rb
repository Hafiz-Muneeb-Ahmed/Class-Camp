class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.string :name
      t.text :address
      t.string :grade
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
