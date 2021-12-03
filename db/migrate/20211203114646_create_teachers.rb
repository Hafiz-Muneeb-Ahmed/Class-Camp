class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :address
      t.string :qualification
      t.string :grade
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
