class RacquetsController < ApplicationController
  def index
    @racquet_results = Racquet.filter(params.slice(:brand, :balance, :weight)).page(params[:page])
    @racquets = Racquet.all
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

  def filtering_params(params)
    params.slice(:brand, :balance, :weight)
  end
end

