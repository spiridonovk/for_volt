module Api
    module V1
        class ReportsController < ApplicationController
          def by_author

            SendWorker.perform_async(params[:start_date], params[:end_date], params[:email])
            render json: { status: "Отчёт сформирован и отправлен на вашу почту"}
           end
        end
    end
end

