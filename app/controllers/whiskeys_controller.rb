class WhiskeysController < ApplicationController
  before_action :set_whiskey, only: %i[show edit update destroy]

  def index
    if params[:whiskey]
      whiskey_params
      @whiskeys = Whiskey.search(params[:whiskey]).paginate(page: params[:page], per_page: 2)
    else
      @whiskeys = Whiskey.paginate(page: params[:page], per_page: 2)
    end
    @titles = Whiskey.all.pluck(:title)
  end

  def show; end

  def new
    @whiskey = Whiskey.new
  end

  def edit; end

  def create
    @whiskey = Whiskey.new(whiskey_params)
    if @whiskey.save
      redirect_to @whiskey, notice: 'Whiskey was successfully created.'
    else
      render :new
    end
  end

  def update
    if @whiskey.update(whiskey_params)
      redirect_to @whiskey, notice: 'Whiskey was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @whiskey.destroy
    redirect_to whiskeys_url, notice: 'Whiskey was successfully destroyed.'
  end

  private

  def set_whiskey
    @whiskey = Whiskey.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def whiskey_params
    params.require(:whiskey).permit(:title, :description, :taste, :color, :smokiness)
  end
end
