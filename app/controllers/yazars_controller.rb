class YazarsController < ApplicationController
  before_action :set_yazar, only: [:show, :edit, :update, :destroy]

  # GET /yazars
  # GET /yazars.json
  def index
    @yazars = Yazar.all
  end

  # GET /yazars/1
  # GET /yazars/1.json
  def show
  end

  # GET /yazars/new
  def new
    @yazar = Yazar.new
  end

  # GET /yazars/1/edit
  def edit
  end

  # POST /yazars
  # POST /yazars.json
  def create
    @yazar = Yazar.new(yazar_params)

    respond_to do |format|
      if @yazar.save
        format.html { redirect_to @yazar, notice: 'Yazar was successfully created.' }
        format.json { render :show, status: :created, location: @yazar }
      else
        format.html { render :new }
        format.json { render json: @yazar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yazars/1
  # PATCH/PUT /yazars/1.json
  def update
    respond_to do |format|
      if @yazar.update(yazar_params)
        format.html { redirect_to @yazar, notice: 'Yazar was successfully updated.' }
        format.json { render :show, status: :ok, location: @yazar }
      else
        format.html { render :edit }
        format.json { render json: @yazar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yazars/1
  # DELETE /yazars/1.json
  def destroy
    @yazar.destroy
    respond_to do |format|
      format.html { redirect_to yazars_url, notice: 'Yazar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yazar
      @yazar = Yazar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yazar_params
      params.require(:yazar).permit(:isim)
    end
end
