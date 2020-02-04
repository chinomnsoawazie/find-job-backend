class CreateCertifications < ActiveRecord::Migration[6.0]
  def change
    create_table :certifications do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :description
      t.string :issued_by
      t.date :issuing_date
      t.boolean :renewable
      t.date :valid_until

      t.timestamps
    end
  end
end
