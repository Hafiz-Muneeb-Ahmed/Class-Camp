class ChangeGradeDatatypeOfTeacherTable < ActiveRecord::Migration[6.1]
  def change
      change_column :teachers, :grade, :integer, using: 'grade::integer'
  end
end
