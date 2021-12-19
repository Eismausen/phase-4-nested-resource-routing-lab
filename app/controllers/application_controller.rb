class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :rescue_record_not_found

    private

    def rescue_record_not_found(exception)
        render json: {error: "#{exception.model} not found"}, status: :not_found
    end
end
