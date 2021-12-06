class AddBioColumnToTeacherTable < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :bio, :text
  end
end
