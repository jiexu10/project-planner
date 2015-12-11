class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.date :due_date
      t.belongs_to :user
      t.belongs_to :project, index: true, null: false

      t.timestamps null: false
    end
  end
end
