class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :country
      t.string :state
      t.string :city
      t.integer :city_population
      t.integer :min_pay
      t.string :job_title
      t.string :industry
      t.date :posting_date_start
      t.date :application_closing_date

      t.timestamps
    end
  end
end
