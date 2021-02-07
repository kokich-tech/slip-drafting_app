class ReSlipController < ApplicationController
  class Withdrawal  < ReSlip
  end
  def index
    # @withdrawal = Withdrawal.all
  end
  def show
    @withdrawal  = Withdrawal.new(money_params)
    

  end

  def money_params
    params.permit(:purpose_id,:store_description,:price).merge(user_id: current_user.id,withdaral: re_slip.id)
  end
  
end
