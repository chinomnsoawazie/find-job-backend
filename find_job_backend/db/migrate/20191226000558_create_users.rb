class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :country
      t.string :state
      t.string :city
      t.integer :age
      t.string :highest_education
      t.string :years_of_experience

      t.timestamps
    end
  end
end
