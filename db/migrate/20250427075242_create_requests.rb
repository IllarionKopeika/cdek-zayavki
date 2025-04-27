class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.string :customer_type
      t.string :company_name
      t.string :request_type
      t.string :declaration
      t.text :own_payment_method
      t.string :transfer_amount
      t.text :goods_category
      t.string :goods_amount
      t.text :link
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.string :cdek_contract
      t.string :cdek_manager_name
      t.string :cdek_manager_contact
      t.text :comment

      t.timestamps
    end
  end
end
