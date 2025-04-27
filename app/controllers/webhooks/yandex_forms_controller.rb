module Webhooks
  class YandexFormsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
      yandex_params = params[:params]
      Rails.logger.info "Получено с Яндекс Формы: #{yandex_params.to_json}"

      Request.create!(
        customer_type:        yandex_params[:customer_type],
        company_name:         yandex_params[:company_name],
        request_type:         yandex_params[:request_type],
        declaration:          yandex_params[:declaration],
        payment_method:       yandex_params[:payment_method],
        own_payment_method:   yandex_params[:own_payment_method],
        transfer_amount:      yandex_params[:transfer_amount],
        goods_category:       yandex_params[:goods_category],
        goods_amount:         yandex_params[:goods_amount],
        link:                 yandex_params[:link],
        contact_name:         yandex_params[:contact_name],
        contact_phone:        yandex_params[:contact_phone],
        contact_email:        yandex_params[:contact_email],
        cdek_contract:        yandex_params[:cdek_contract],
        cdek_manager_name:    yandex_params[:cdek_manager_name],
        cdek_manager_contact: yandex_params[:cdek_manager_contact],
        comment:              yandex_params[:comment]
      )

      head :ok
    end
  end
end
