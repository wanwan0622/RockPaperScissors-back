class PrinciplesController < ApplicationController
  before_action :set_principle, only: %i[ show update destroy ]

  # GET /principles/1
  def show
    render json: @principle
  end

  # POST /principles
  def create
    @principle = Principle.new(principle_params)

    if @principle.save
      render json: @principle, status: :created, location: @principle
    else
      render json: @principle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /principles/1
  def update
    if @principle.update(principle_params)
      render json: @principle
    else
      render json: @principle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /principles/1
  def destroy
    @principle.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principle
      @principle = Principle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def principle_params
      params.fetch(:principle, {})
    end
end
