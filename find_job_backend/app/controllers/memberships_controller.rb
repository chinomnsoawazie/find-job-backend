class MembershipsController < ApplicationController
    def index
        memberships = Membership.all 
        render json: memberships
    end
    
    def show
        membership = Membership.find(params[:id])
        render json: membership
    end
    
    def create
        membership = Membership.create(membership_params)
        if membership.valid?
          render json: membership
        else
          render json:{errors: membership.errors.full_messages}
        end
    end
    
    def update
        membership = Membership.find(params[:id])
        if membership.update(membership_params)
          render json: membership
        else
          render json: membership.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Membership.destroy(params[:id])
    end
    
    private
    
    def membership_params
        params.require(:membership).permit(:user_id, :organization, :start_date, :end_date)
    end
end
