class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :roll_no
      t.string :name
      t.string :maths
      t.string :physics
      t.string :chemistry

      t.timestamps
    end
  end
end
