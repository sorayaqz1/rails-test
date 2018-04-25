class MoneytransactionsController < ApplicationController
  before_action :set_moneytransaction, only: [:edit, :update, :show, :destroy]

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
  end

  def update
    if @moneytransaction.update(moneytransaction_params)
      flash[:notice] = "Money transaction was successfully update"
      redirect_to moneytransaction_path(@moneytransaction)
    else
      render 'edit'
    end
  end



  def show
  end

  def destroy
    @moneytransaction.destroy
    flash[:notice] = "Money transaction was successfully deleted"
    redirect_to moneytransactions_path
  end

  private
    def set_moneytransaction
      @moneytransaction = Moneytransaction.find(params[:id])
    end

    def moneytransaction_params
      params.require(:moneytransaction).permit(:title)
    end

end
