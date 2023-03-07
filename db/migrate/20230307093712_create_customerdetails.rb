class CreateCustomerdetails < ActiveRecord::Migration[6.1]
  def change
    create_table :customerdetails do |t|

t.string :last_name
t.string :first_name
t.string :nickname
t.string :gender
t.string :post_code
t.string :profession
t.string :address
t.string :annual_income
t.string :repeat
t.string :marriage
t.string :children
t.string :visits
t.string :unit_price
t.string :phone_number
t.string :email
      t.timestamps
    end
  end
end
