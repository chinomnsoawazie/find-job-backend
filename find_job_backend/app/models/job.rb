class Job < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_many :notes, dependent: :destroy
  # accepts_nested_attributes_for :notes
  # accepts_nested_attributes_for :tasks
end
