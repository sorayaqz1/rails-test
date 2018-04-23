class MoneytransactionsController < ApplicationController
  def new
    @moneytransaction = Moneytransaction.new
  end

  def create
    @moneytransaction = Moneytransaction.new(moneytransaction_params)
    @moneytransaction.save
    redirect_to moneytransaction_path(@moneytransaction)

  end

  def moneytransaction_params
    params.require(:moneytransaction).permit(:title)
  end

end
