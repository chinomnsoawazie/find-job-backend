class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :country, :state, :city, :age, :highest_education, :years_of_experience
  has_many :preferences
  has_many :skills
  has_many :memberships
  has_many :employments
  has_many :educations
  has_many :certifications
  has_many :jobs
  has_many :notes, through: :jobs
  has_many :tasks, through: :jobs


  def include
    current_user
  end
end


# class TokenController < ApplicationController

#   def self.include2
#     puts 'hello'
#    end

  
# end