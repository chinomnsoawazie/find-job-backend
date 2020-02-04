class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :description
      t.integer :proficiency_level

      t.timestamps
    end
  end
end
