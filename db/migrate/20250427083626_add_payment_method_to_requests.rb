class AddPaymentMethodToRequests < ActiveRecord::Migration[7.1]
  def change
    add_column :requests, :payment_method, :string
  end
end
