class RacquetsController < ApplicationController
  def index
    @racquets = Racquet.order(:brand, model: :asc)

    if params[:brand].present?
      @racquets = @racquets.where(brand: params[:brand])
    end

    if params[:balance].present?
      @racquets = @racquets.where(balance: params[:balance])
    end

    if params[:weight].present?
      @racquets = @racquets.where(weight: params[:weight])
    end
  end

  def filter_form
    @racquets = Racquet.order(:brand, model: :asc)

    if params['query']['brand'].present?
      @racquets = @racquets.where(brand: params[:query][:brand])
    end

    if params['query']['balance'].present?
      @racquets = @racquets.where(balance: params[:query][:balance])
    end

    if params['query']['weight'].present?
      @racquets = @racquets.where(weight: params[:query][:weight])
    end
  end

  def new
    @racquet = Racquet.new
  end

  def create
    racquet = Racquet.new(racquet_params)

    if racquet.save
      flash[:success] = "Racquet saved!"
    else
      flash[:danger] = racquet.errors.full_messages
    end

    redirect_to new_racquet_path
  end

  private
  def racquet_params
    params.require(:racquet).permit(:brand, :model, :weight, :balance, :important_notes)
  end
end
