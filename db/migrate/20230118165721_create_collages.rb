class CreateCollages < ActiveRecord::Migration[7.0]
  def change
    create_table :collages do |t|
      t.string :name
      t.string :course_name
      t.string :year
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
