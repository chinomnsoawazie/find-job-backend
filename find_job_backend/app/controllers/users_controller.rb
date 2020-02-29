class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :jobs_api_keys]
    def jobs_api_keys
      usaAPI =  ENV["USA_JOBS"]
      googleMapsAPI = ENV["GOOGLE_MAPS_API_KEY"]
      myEmail = ENV["MY_EMAIL"]
      render json: {USAJobsAPIKey: usaAPI, GOOGLE_MAPS_API_KEY: googleMapsAPI, myEmail: myEmail }
    end
   
    def create
      @user = User.create(user_params)
      if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), token: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
  
    def update
      user = User.find(params[:id])
      if user.update(user_params)
        token = encode_token(user_id: user.id)
        render json: { user: UserSerializer.new(user), token: token }
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      User.destroy(params[:id])
    end
  
    private
    def user_params
      params.permit(:id, :first_name, :last_name, :username, :password, :email, :country, :state, :city, :age, :highest_education, :years_of_experience)
    end
end
