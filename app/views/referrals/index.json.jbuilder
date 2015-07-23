json.array!(@referrals) do |referral|
  json.extract! referral, :id, :user_id, :company_name, :contact_name, :contact_email, :contact_mobile, :phone, :message, :machine_brand, :machine_weightclass
  json.url referral_url(referral, format: :json)
end
