

class LoginController < ApplicationController

  def create
    user = User.find_by(username: params[:username].downcase)
    if user && user.authenticate(params[:password])

      # render json: {token: token(user.id), user: UserSerializer.new(user)}

      #another method to do this

      render json: {token: token(user.id), user: UserSerializer.new(user)}

      # render json: {token: token(user.id), user: user, jobs: user.jobs, preferences: user.preferences, skills: user.skills, memberships: user.memberships, employments: user.employments, certificaitons: user.certifications, education: user.educations,  notes: user.jobs.map{|job| job.notes}, tasks: user.jobs.map{|job| job.tasks}}

    else
      render json: { errors: [ "User not found" ] }, status: :unprocessable_entity
    end 
  end
end
