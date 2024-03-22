class ReportDetailsController < ApplicationController
  before_action :set_report_detail, only: [:update]

  # GET /report_details?report_id=1
  def index
    report_details = ReportDetail.where(report_id: params[:report_id])

    if report
      render json: report_details
    else
      # 該当するレコードが見つからない場合は、404 Not Foundを返す
      render json: { error: "Not Found" }, status: :not_found
    end
  end

  # POST /report_details
  def create
    @report_detail = ReportDetail.new(report_detail_params)

    if @report_detail.save
      render json: @report_detail, status: :created, location: @report_detail
    else
      render json: @report_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /report_details/1
  def update
    if @report_detail.update(report_detail_params)
      render json: @report_detail
    else
      render json: @report_detail.errors, status: :unprocessable_entity
    end
  end

  private
    def set_report_detail
      @report_detail = ReportDetail.find(params[:id])
    end

    def report_detail_params
      params.permit(:content, :report_id)
    end
end
