class ReferralsController < InheritedResources::Base
  before_action :set_referral, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @referrals = Referral.all
    respond_with(@referrals)
  end

  def show
    respond_with(@referral)
  end

  def new
    @referral = Referral.new
    respond_with(@referral)
  end

  def edit
  end

  def create
    @referral = Referral.new(referral_params)
    @referral.user_id = current_user.id
    @referral.save
    respond_with(@referral)
  end

  def update
    @referral.update(referral_params)
    respond_with(@referral)
  end

  def destroy
    @referral.destroy
    respond_with(@referral)
  end

  private
    def set_referral
      @referral = Referral.find(params[:id])
    end

    def referral_params
      params.require(:referral).permit(:company_name, :contact_name, :contact_email, :contact_mobile, :phone, :message, :machine_brand, :machine_weightclass)
    end
end

