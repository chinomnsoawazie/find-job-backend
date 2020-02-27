class CertificationsController < ApplicationController
    def create
        certification = Certification.create(certification_params)
        userCertifications = User.find(params[:user_id]).certifications
        if certification.valid?
            render json: userCertifications
        else
            render json:{errors: certification.errors.full_messages}
        end
    end

    def update
        certification = Certification.find(params[:id])
        userCertifications = User.find(params[:user_id]).certifications
        if certification.update(certification_params)
            render json: userCertifications
        else
            render json: certification.errors, status: :unprocessable_entity
        end
    end

    def destroy
        Certification.destroy(params[:id])
        userCertifications = User.find(params[:user_id]).certifications
        render json: userCertifications
    end

    private
    def certification_params
        params.require(:certification).permit(:user_id, :description, :issued_by, :issuing_date, :renewable, :valid_until)
    end
end