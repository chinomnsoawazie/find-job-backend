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
        if preference.valid?
          render json: preference
        else
          render json:{errors: preference.errors.full_messages}
        end
    end
    
    def update
        preference = Preference.find(params[:id])
        if preference.update(preference_params)
          render json: preference
        else
          render json: preference.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Preference.destroy(params[:id])
    end
    
    private
    
    def preference_params
        params.require(:preference).permit(:user_id, :name, :country, :state, :city, :city_population, :pay_range, :job_title, :industry)
    end
end
