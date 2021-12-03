class CreatePods < ActiveRecord::Migration[6.1]
  def change
    create_table :pods do |t|
      t.text :location
      t.string :zipcode
      t.string :name

      t.timestamps
    end
  end
end
