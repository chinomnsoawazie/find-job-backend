class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name_of_institution
      t.string :degree_or_certificate
      t.float :gpa
      t.date :start_date
      t.date :end_date
      t.string :country
      t.string :state
      t.string :city
      t.string :major
      t.string :minor

      t.timestamps
    end
  end
end
