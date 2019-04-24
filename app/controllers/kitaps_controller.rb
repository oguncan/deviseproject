class KitapsController < ApplicationController
  before_action :set_kitap, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  # GET /kitaps
  # GET /kitaps.json
  def index
    @kitaps = Kitap.all
  end

  # GET /kitaps/1
  # GET /kitaps/1.json
  def show
  end

  # GET /kitaps/new
  def new
    @kitap = Kitap.new
  end

  # GET /kitaps/1/edit
  def edit
  end

  # POST /kitaps
  # POST /kitaps.json
  def create
    @kitap = Kitap.new(kitap_params)

    respond_to do |format|
      if @kitap.save
        format.html { redirect_to @kitap, notice: 'Kitap was successfully created.' }
        format.json { render :show, status: :created, location: @kitap }
      else
        format.html { render :new }
        format.json { render json: @kitap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitaps/1
  # PATCH/PUT /kitaps/1.json
  def update
    respond_to do |format|
      if @kitap.update(kitap_params)
        format.html { redirect_to @kitap, notice: 'Kitap was successfully updated.' }
        format.json { render :show, status: :ok, location: @kitap }
      else
        format.html { render :edit }
        format.json { render json: @kitap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitaps/1
  # DELETE /kitaps/1.json
  def destroy
    @kitap.destroy
    respond_to do |format|
      format.html { redirect_to kitaps_url, notice: 'Kitap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitap
      @kitap = Kitap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kitap_params
      params.require(:kitap).permit(:isim, :ozet, :resim)
    end
end
