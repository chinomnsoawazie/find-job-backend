class PreferencesController < ApplicationController
    def index
        preferences = Preference.all 
        render json: preferences
    end
    
    def show
        preference = Preference.find(params[:id])
        render json: preference
    end
    
    def create
        preference = Preference.create(preference_params)
        userPreferences = User.find(params[:user_id]).preferences
        if preference.valid?
          render json: {userPreferences: userPreferences}
        else
          render json:{errors: preference.errors.full_messages}
        end
    end
    
    def update
        preference = Preference.find(params[:id])
        userPreferences = User.find(params[:user_id]).preferences
        if preference.update(preference_params)
          render json: {userPreferences: userPreferences}
        else
          render json: preference.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Preference.destroy(params[:id])
        userPreferences = User.find(params[:user_id]).preferences
        render json: {userPreferences: userPreferences}
    end
    
    private
    
    def preference_params
        params.require(:preference).permit(:id, :user_id, :name, :country, :state, :city, :city_population, :min_pay, :job_title, :industry)
    end
end
