class ImageToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :image, :string
  end
end
