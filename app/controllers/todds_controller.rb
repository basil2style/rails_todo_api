class ToddsController < ApplicationController
  before_action :set_todd, only: [:show, :update, :destroy]

  # GET /todds
  def index
    @todds = Todd.all

    render json: @todds
  end

  # GET /todds/1
  def show
    render json: @todd
  end

  # POST /todds
  def create
    @todd = Todd.new(todd_params)

    if @todd.save
      render json: @todd, status: :created, location: @todd
    else
      render json: @todd.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todds/1
  def update
    if @todd.update(todd_params)
      render json: @todd
    else
      render json: @todd.errors, status: :unprocessable_entity
    end
  end

  # DELETE /todds/1
  def destroy
    @todd.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todd
      @todd = Todd.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def todd_params
      params.require(:todd).permit(:task)
    end
end
