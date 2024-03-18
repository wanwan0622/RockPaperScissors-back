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
      params.permit(
        :principle_first, :principle_second, :principle_third, :principle_fourth,
        :principle_fifth, :principle_sixth, :principle_seventh, :principle_eighth,
        :principle_ninth, :principle_tenth, :why_first, :what_first, :when_first,
        :who_first, :how_first, :where_first, :other_first, :why_second, :what_second,
        :when_second, :who_second, :how_second, :where_second, :other_second, :why_third,
        :what_third, :when_third, :who_third, :how_third, :where_third, :other_third
        # TODO: ユーザーまたはパートナーを参照する場合は、以下のように追加します。
        # :user_id, :partner_id
      )
    end
end
