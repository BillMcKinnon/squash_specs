class RacquetsController < ApplicationController
  def index
    @racquets = Racquet.order(:brand, model: :asc)
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
