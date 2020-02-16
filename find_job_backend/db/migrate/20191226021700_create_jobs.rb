class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.belongs_to :user, null: true, foreign_key: false
      t.integer :usaJobs_job_id
      t.string :position_id
      t.string :job_title
      t.string :organization_name
      t.string :url
      t.string :department
      t.string :job_type
      t.string :schedule
      t.string :description
      t.string :requirement
      t.string :maximum_pay
      t.string :minimum_pay
      t.string :pay_period
      t.string :employer_strongpoints
      t.string :who_may_apply
      t.string :hiring_path
      t.string :location
      t.string :job_posting_date
      t.string :application_close_date
      t.boolean :applied_key
      t.boolean :favorite_key

      t.timestamps
    end
  end
end