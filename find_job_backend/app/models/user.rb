class User < ApplicationRecord
    has_secure_password
    has_many :jobs, dependent: :destroy
    has_many :preferences, dependent: :destroy
    has_many :skills, dependent: :destroy
    has_many :memberships, dependent: :destroy
    has_many :employments, dependent: :destroy
    has_many :certifications, dependent: :destroy
    has_many :educations, dependent: :destroy
    has_many :tasks, through: :jobs, dependent: :destroy
    has_many :notes, through: :jobs, dependent: :destroy

    # validates_presence_of :username
    # validates_uniqueness_of :username, :case_sensitive => false
end
