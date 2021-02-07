class WithdrawalsController < ApplicationController
  before_action :redirect_to_log_in, only: [:new, :create,:show]
  
  def new
    @withdrawal  = Withdrawal.new
  end
  
  def index
    # @withdrawal = Withdrawal.find(current_user.id)
    @withdrawal = Withdrawal.all
  end

  def show
    @withdrawal  = Withdrawal.all
    @withdrawal = Withdrawal.find(params[:id])
  end
  def create
    @withdrawal  = Withdrawal.new(money_params)
    if @withdrawal.save
      redirect_to secondtop_index_path
    else
      render :new
    end
  end

  def sum
    Withdrawal.all.sum(:price_10000,:price_5000,:price_1000,:price_500,:price_100,:price_50,:price_10,:price_5,:price_1)
  end

  private
  def redirect_to_log_in
    redirect_to new_user_session_path unless user_signed_in?
  end

  def money_params
    params.require(:withdrawal).permit(:purpose_id,:store_description,:price).merge(user_id: current_user.id)
  end

end
