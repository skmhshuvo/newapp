class ShuvosController < ApplicationController
  before_action :set_shuvo, only: [:show, :edit, :update, :destroy]

  # GET /shuvos
  # GET /shuvos.json
  def index
    @shuvos = Shuvo.all
  end

  # GET /shuvos/1
  # GET /shuvos/1.json
  def show
  end

  # GET /shuvos/new
  def new
    @shuvo = Shuvo.new
  end

  # GET /shuvos/1/edit
  def edit
  end

  # POST /shuvos
  # POST /shuvos.json
  def create
    @shuvo = Shuvo.new(shuvo_params)

    respond_to do |format|
      if @shuvo.save
        format.html { redirect_to @shuvo, notice: 'Shuvo was successfully created.' }
        format.json { render :show, status: :created, location: @shuvo }
      else
        format.html { render :new }
        format.json { render json: @shuvo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shuvos/1
  # PATCH/PUT /shuvos/1.json
  def update
    respond_to do |format|
      if @shuvo.update(shuvo_params)
        format.html { redirect_to @shuvo, notice: 'Shuvo was successfully updated.' }
        format.json { render :show, status: :ok, location: @shuvo }
      else
        format.html { render :edit }
        format.json { render json: @shuvo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shuvos/1
  # DELETE /shuvos/1.json
  def destroy
    @shuvo.destroy
    respond_to do |format|
      format.html { redirect_to shuvos_url, notice: 'Shuvo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shuvo
      @shuvo = Shuvo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shuvo_params
      params.require(:shuvo).permit(:title, :description, :no_followers)
    end
end
