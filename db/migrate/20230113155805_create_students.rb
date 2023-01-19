class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.string :contact
      t.timestamps
    end
  end
end
