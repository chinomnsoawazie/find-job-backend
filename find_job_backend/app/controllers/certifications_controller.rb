class CertificationsController < ApplicationController
    def index
        certifications = Certification.all 
        render json: certifications
    end

    def show
        certification = Certification.find(params[:id])
        render json: certification
    end

    def create
        certification = Certification.create(certification_params)
        if certification.valid?
            render json: certification
        else
            render json:{errors: certification.errors.full_messages}
        end
    end

    def update
        certification = Certification.find(params[:id])
        if certification.update(certification_params)
            render json: certification
        else
            render json: certification.errors, status: :unprocessable_entity
        end
    end

    def destroy
        Certification.destroy(params[:id])
    end

    private

    def certification_params
        params.require(:certification).permit(:user_id, :description, :issued_by, :issuing_date, :renewable, :valid_until)
    end
end
