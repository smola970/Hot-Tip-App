class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.integer :user_id
      t.string :company_name
      t.string :contact_name
      t.string :contact_email
      t.string :contact_mobile
      t.string :phone
      t.text :message
      t.string :machine_brand
      t.string :machine_weightclass

      t.timestamps
    end
  end
end
