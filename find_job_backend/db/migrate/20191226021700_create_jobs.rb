class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.belongs_to :user, null: true, foreign_key: false
      t.string :job_title
      t.string :company_name
      t.string :country
      t.string :state
      t.string :city
      t.integer :zipcode
      t.integer :pay
      t.string :job_type
      t.string :intro
      t.string :requirement
      t.string :employer_strongpoints
      t.string :benefits
      t.string :education
      t.string :schedule
      t.string :description
      t.string :duties
      t.string :url
      t.string :industry
      t.boolean :applied_key
      t.boolean :favorite_key

      t.timestamps
    end
  end
end
