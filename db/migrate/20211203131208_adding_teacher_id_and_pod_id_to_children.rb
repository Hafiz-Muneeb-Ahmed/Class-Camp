class AddingTeacherIdAndPodIdToChildren < ActiveRecord::Migration[6.1]
  def change
    change_table :children do |t|
      t.references :parent,index: true
      t.references :pod,index: true
    end
  end
end
