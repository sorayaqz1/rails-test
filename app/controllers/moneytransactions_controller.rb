class MoneytransactionsController < ApplicationController
  def index
    @moneytransactions = Moneytransaction.all
  end

  def new
    @moneytransaction = Moneytransaction.new
  end

  def create
    @moneytransaction = Moneytransaction.new(moneytransaction_params)
    if @moneytransaction.save
      flash[:notice] = "Money transaction was successfully created"
      redirect_to moneytransaction_path(@moneytransaction)
    else
      render 'new'
    end
  end

  def edit
    @moneytransaction = Moneytransaction.find(params[:id])
  end

  def update
    @moneytransaction = Moneytransaction.find(params[:id])
    if @moneytransaction.update(moneytransaction_params)
      flash[:notice] = "Money transaction was successfully update"
      redirect_to moneytransaction_path(@moneytransaction)
    else
      render 'edit'
    end

  end


  def show
    @moneytransaction = Moneytransaction.find(params[:id])
  end

  def moneytransaction_params
    params.require(:moneytransaction).permit(:title)
  end

end
