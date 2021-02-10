class PaymentsController < ApplicationController
  before_action :redirect_to_log_in, only: [:new, :create,:show]
  
  def new
    @payment  = Payment.new
  end
  
  def index
    @payment = Payment.all
  end

  def show
    @payment  = Payment.all
    @payment = Payment.find(params[:id])
  end
  def create
    @payment  = Payment.new(pay_params)
    if @payment.save
      redirect_to secondtop_index_path
    else
      render :new
    end
  end


  private
  def redirect_to_log_in
    redirect_to new_user_session_path unless user_signed_in?
  end

  def pay_params
    params.require(:payment).permit(:purposepay_id,:store_description,:price,:staff_name,:type_id).merge(user_id: current_user.id)
  end

end


