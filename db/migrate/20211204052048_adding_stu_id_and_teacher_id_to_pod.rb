class AddingStuIdAndTeacherIdToPod < ActiveRecord::Migration[6.1]
  def change
    change_table :pods do |t|
      t.references :teacher,index: true
    end
  end
end
