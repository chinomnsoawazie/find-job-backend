class CreateEmployments < ActiveRecord::Migration[6.0]
  def change
    create_table :employments do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :company_name
      t.string :job_title
      t.integer :start_month
      t.integer :start_year
      t.integer :end_month
      t.integer :end_year
      t.string :duties
      t.string :country
      t.string :city
      t.string :state
      t.boolean :currently_work_here

      t.timestamps
    end
  end
end
