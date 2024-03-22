class ReportsController < ApplicationController
  before_action :set_report, only: %i[show update]

  # GET /reports/:user_id
  def show
    report = Report.find_by(user_id: params[:user_id])

    if report
      render json: report
    else
      # 該当するレコードが見つからない場合は、404 Not Foundを返す
      render json: { error: "Not Found" }, status: :not_found
    end
  end

  # POST /reports
  def create
    @report = Report.new(report_params)

    if @report.save
      render json: @report, status: :created, location: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reports/1
  def update
    if @report.update(report_params)
      render json: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  private
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.permit(:title, :decision, :todo_progress, :user_id)
    end
end
