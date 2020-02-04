class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :job, null: false, foreign_key: true
      t.string :description
      t.date :due_date
      t.boolean :done_status

      t.timestamps
    end
  end
end
