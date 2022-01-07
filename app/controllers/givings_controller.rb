class GivingsController < ApplicationController
  before_action :set_giving, only: %i[ show edit update destroy ]

  # GET /givings or /givings.json
  def index
    @givings = Giving.all
  end

  # GET /givings/1 or /givings/1.json
  def show
  end

  # GET /givings/new
  def new
    @giving = Giving.new
  end

  # GET /givings/1/edit
  def edit
  end

  # POST /givings or /givings.json
  def create
    @giving = Giving.new(giving_params)

    respond_to do |format|
      if @giving.save
        format.html { redirect_to giving_url(@giving), notice: "Giving was successfully created." }
        format.json { render :show, status: :created, location: @giving }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @giving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /givings/1 or /givings/1.json
  def update
    respond_to do |format|
      if @giving.update(giving_params)
        format.html { redirect_to giving_url(@giving), notice: "Giving was successfully updated." }
        format.json { render :show, status: :ok, location: @giving }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @giving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /givings/1 or /givings/1.json
  def destroy
    @giving.destroy

    respond_to do |format|
      format.html { redirect_to givings_url, notice: "Giving was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giving
      @giving = Giving.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def giving_params
      params.require(:giving).permit(:church, :charity)
    end
end
