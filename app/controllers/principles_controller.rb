class PrinciplesController < ApplicationController
  before_action :set_principle, only: %i[ update destroy ]

  # GET /principles/:user_id
  def show
    principle = Principle.find_by(user_id: params[:user_id])

    if principle
      render json: principle
    else
      # 該当するレコードが見つからない場合は、404 Not Foundを返す
      render json: { error: "Not Found" }, status: :not_found
    end
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
      params.permit(
        :principle_first, :principle_second, :principle_third, :principle_fourth,
        :principle_fifth, :principle_sixth, :principle_seventh, :principle_eighth,
        :principle_ninth, :principle_tenth,
        :id_first, :why_first, :how_first, :when_first, :situation_first,
        :where_first, :who_first, :what_first, :other_first,
        :id_second, :why_second, :how_second, :when_second, :situation_second,
        :where_second, :who_second, :what_second, :other_second,
        :id_third, :why_third, :how_third, :when_third, :situation_third,
        :where_third, :who_third, :what_third, :other_third,
        :user_id, :partner_id
      )
    end
end
