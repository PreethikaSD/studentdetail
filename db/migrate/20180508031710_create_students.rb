class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :student_number
      t.string :faculty

      t.timestamps
    end
  end
end
