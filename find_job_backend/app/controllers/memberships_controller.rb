class MembershipsController < ApplicationController    
    def create
        membership = Membership.create(membership_params)
        userMemberships = User.find(params[:user_id]).memberships
        if membership.valid?
          render json: userMemberships
        else
          render json:{errors: membership.errors.full_messages}
        end
    end
    
    def update
        membership = Membership.find(params[:id])
        userMemberships = User.find(params[:user_id]).memberships
        if membership.update(membership_params)
          render json: userMemberships
        else
          render json: membership.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        Membership.destroy(params[:id])
        userMemberships = User.find(params[:user_id]).memberships
        render json: userMemberships
    end
    
    private
    def membership_params
        params.require(:membership).permit(:id, :user_id, :organization, :start_date, :end_date)
    end
end