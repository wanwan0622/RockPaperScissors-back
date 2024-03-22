class PartnersController < ApplicationController
  before_action :set_partner, only: [:update, :destroy]

  # GET /partners/:user_id
  def show
    partner = Partner.find_by(user_id: params[:user_id])

    if partner
      render json: partner
    else
      # 該当するレコードが見つからない場合は、404 Not Foundを返す
      render json: { error: "Not Found" }, status: :not_found
    end
  end

  # POST /partners
  def create
    @partner = Partner.new(partner_params)

    if @partner.save
      render json: @partner, status: :created, location: @partner
    else
      render json: @partner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /partners/1
  def update
    if @partner.update(partner_params)
      render json: @partner
    else
      render json: @partner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /partners/1
  def destroy
    @partner.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner
      @partner = Partner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def partner_params
      params.permit(:name, :user_id)
    end
end
